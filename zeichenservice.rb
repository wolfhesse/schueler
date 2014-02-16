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
    puts "algo reset"
    @algo.reset2
  end

  def service3
    puts "bbewegung"
    @algo.bbewegung

  end

end