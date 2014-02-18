require ('./johannas_physik_bibliothek')

class AlgoErnsthaftEins
  def initialize
    @voriges_x=0
    @step = 0.2
  end

  def next_xy
    x=@voriges_x+@step
    y=Math::E ** x
    @voriges_x =x

    return x, y
  end

  def reset2
    @voriges_x =0
  end


  def bbewegung

    ### sowas wird es werden
    # x ... zeit, t
    # y ... f(x) ...weg
    # y ..ist also auch: Z0 * t + summe_von_k_bis_unendlich( Zk * wurzel_2 * sin(k Math::Pi t) /  k * Math::Pi    )
    # k .. ist die boltzmann konstante
    # einheit von k ist eV/K

    k = 8.617 * 10 ** (-5)

    # @temperatursensor.aktueller_wert() ... fake draus
    temp0 = 293.15 # V vitesse bei nn kelvin, mal so salopp gemesssen
    z0 = JohannasPhysikBibliothek.geschwindigkeit_luege(temp0)

    gesamtsumme = 0

    20.upto(50).each { |e| gesamtsumme += e }

    # jetzt verwende ich die ueberlegen physikbiblio von johanne
    temperatur =17
    masse = 123123 # aus dem lexikon fuer h2o
    ergebnis = JohannasPhysikBibliothek.meine_version_algo_abgeleitet_aus_dem_internet(0, 1)

    ### aber derweil machen wirs uns einfach, weil wir Z0 und ZK und summe noch nicht kapiert haben

    x = @voriges_x + @step
    @voriges_x = x # fuers naechste mal merken
    y = z0 * x + gesamtsumme


    puts "#{y} m"
  end
end