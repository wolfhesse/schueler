#!/usr/bin/env ruby

# Initializes Ruby/GTK2, as usual.
require 'gtk2'

require './algo_dummy'
require './aufbau'
require './services'
require './echte_services'
require './zeichenservice'
require './zeichenflaeche_dummy'

# Creates the window.
window = Gtk::Window.new

# Specify the title and border of the window.

# zeichenservice mit zeichenflaeche_dummy und algo_dummy als Service-1
zeichenservice = Zeichenservice.new(ZeichenflaecheDummy.new, AlgoDummy.new)

Aufbau.new(zeichenservice).initial_setup(window)

# You may call the show method of each widgets, as follows:
#   button1.show
#   button2.show
#   box1.show
#   window.show
window.show_all
Gtk.main