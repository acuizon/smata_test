module FilmHelper

  def get_characters(film)
    all_people = SwapiPerson.get_all

    all_people.select {|p| film["characters"].include?(p["url"]) }
  end

  def get_planets(film)
    all_planets = SwapiPlanet.get_all

    all_planets.select {|p| film["planets"].include?(p["url"]) }
  end

  def get_species(film)
    all_species = SwapiRace.get_all

    all_species.select {|s| film["species"].include?(s["url"]) }
  end

  def get_starships(film)
    all_starships = SwapiStarship.get_all

    all_starships.select {|s| film["starships"].include?(s["url"]) }
  end

  def get_vehicles(film)
    all_vehicles = SwapiVehicle.get_all

    all_vehicles.select {|v| film["vehicles"].include?(v["url"]) }
  end

end