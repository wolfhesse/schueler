class Zeichenservice

  # brauche @zeichenflaeche
  # brauche @algorithmus

  def initialize(zeichenflaeche, algorithmus)
    @zeichenflaeche =zeichenflaeche
    @algo = algorithmus
    @area= nil
  end

  def service1
    #brauche koordinaten vom Algorithmus
    x, y = @algo.next_xy
    @zeichenflaeche.mach_nen_punkt([x, y])
  end

  def service2
    puts "algo reset"
    @algo.reset2
  end

  def service3
    puts "bbewegung"
    @algo.bbewegung
    @area.signal_emit("expose_event",nil)
  end

  def drawing_service(area)
    @area=area
    alloc = area.allocation
    #area.window.draw_arc(area.style.fg_gc(area.state), true,
    #                     0, 0, alloc.width, alloc.height, 0, 64 * 360)
    x,y=@algo.next_xy
    area.window.draw_point(area.style.fg_gc(area.state),x,y)

  end

end