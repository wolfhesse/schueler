class JohannasPhysikBibliothek

  BOLTZMANN_KONSTANTE = 8

  def self.eins
    1
  end

  # die folgende funktion  berechnet
  # @param temperatur
  # @param masse ... molekularmasse
  #
  # guenstiger einsatzort bei der berechnung von..
  def self.meine_version_algo_abgeleitet_aus_dem_internet(temperatur, masse)
    Math.sqrt(3 * BOLTZMANN_KONSTANTE * temperatur / masse)
  end

end