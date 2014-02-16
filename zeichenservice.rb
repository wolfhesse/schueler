class Zeichenservice

  # brauche @zeichenflaeche
  # brauche @algorithmus

  def initialize(zeichenflaeche, algorithmus)
    @zeichenflaeche =zeichenflaeche
    @algo = algorithmus
  end

  def service1
    #brauche koordinaten vom Algorithmus
    x, y = @algo.next_xy
    @zeichenflaeche.mach_nen_punkt([x, y])
  end

  def service2
    puts 'hier ist nichts'
  end

end