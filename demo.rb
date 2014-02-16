#!/usr/bin/env ruby

# Initializes Ruby/GTK2, as usual.
require 'gtk2'

require './algo_dummy'
require './algo_ernsthaft_eins'
require './laufzeit_system'
require './services'
require './echte_services'
require './zeichenservice'
require './zeichenflaeche_dummy'


zeichenflaeche = ZeichenflaecheDummy.new
# zeichenservice mit zeichenflaeche_dummy und algo_dummy als Service-1

zeichenservice = Zeichenservice.new(zeichenflaeche, AlgoErnsthaftEins.new)

laufzeitsystem = LaufzeitSystem.new(zeichenservice)

# dem initial_setup die zeichenflaeche einhaengen
laufzeitsystem.initial_setup(zeichenflaeche)

laufzeitsystem.start

