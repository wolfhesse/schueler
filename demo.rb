#!/usr/bin/env ruby

# Initializes Ruby/GTK2, as usual.
require 'gtk2'

require './algo_dummy'
require './laufzeit_system'
require './services'
require './echte_services'
require './zeichenservice'
require './zeichenflaeche_dummy'


# zeichenservice mit zeichenflaeche_dummy und algo_dummy als Service-1
zeichenservice = Zeichenservice.new(ZeichenflaecheDummy.new, AlgoDummy.new)

laufzeitsystem = LaufzeitSystem.new(zeichenservice)
laufzeitsystem.initial_setup()
laufzeitsystem.start()

