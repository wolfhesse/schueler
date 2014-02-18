require 'gtk2'

class LaufzeitSystem

  def initialize(services)
    @services = services

# Creates the window.
    @window = Gtk::Window.new


  end

  def start

# You may call the show method of each widgets, as follows:
#   button1.show
#   button2.show
#   box1.show
#   window.show
    @window.show_all
    Gtk.main
  end

  def initial_setup(zeichenflaeche)

    # werden wir brauchen... nachdem das fenster da ist,mit einer zeichen-komponente
    # bekommt die zeichenflaeche eine canvas referenz eingepflanzt
    @zeichenflaeche = zeichenflaeche


# Specify the title and border of the window.
    @window.title = 'Hello Buttons'
    @window.border_width = 10

# The program will directly end upon 'delete_event'.
    @window.signal_connect('delete_event') do
      Gtk.main_quit
      false
    end

# We create a box to pack widgets into.
# This is described in detail in the following section.
# The box is not really visible, it is just used as a tool to arrange
# widgets.
    box1 = Gtk::HBox.new(false, 0)

# Put the box into the main window.
    @window.add(box1)
    create_button(box1, 'Service 1') do
      2.upto(6) { @services.service1 }
    end
    create_button(box1, 'Service 2') do
      @services.service2
    end
    create_button(box1, 'Johannas Test') do
      @services.service3
    end

    create_canvas(box1) do |area|
      puts 'area muss gefuellt werden'
      @services.drawing_service(area)
    end

    @window
  end

  def create_canvas(box1, &zeichne)
    puts 'keine ahnung'
    area = Gtk::DrawingArea.new
    area.set_size_request(100, 100)
    area.signal_connect("expose_event") do
      zeichne.call(area)

    end
    box1.pack_start(area, true, true, 0)
    area
  end

  def create_button(box1, button_text, &service)
    button = Gtk::Button.new(button_text)
    button.signal_connect('clicked') do |w|
      service.call
    end
    box1.pack_start(button, true, true, 0)
  end

end