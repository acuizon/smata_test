module ApplicationHelper

  def tooltip_data(item, type)
    data = case type
      when "Film"
        [
          'Director: ' + item['director'],
          'Producer: ' + item['producer'],
          'Date released: ' + item['release_date']
        ]
      when "People"
        [
          'Birth year: ' + item['birth_year'], 
          'Eyes: ' + item['eye_color'], 
          'Gender: ' + item['gender'], 
          'Hair: ' + item['hair_color'], 
          'Height: ' + item['height'], 
          'Weight: ' + item['mass'], 
          'Skin: ' + item['skin_color']
        ]
      when "Planets"
        [
          'Diameter: ' + item['diameter'], 
          'Rotation period: ' + item['rotation_period'],
          'Orbital period: ' + item['orbital_period'],
          'Gravity: ' + item['gravity'],
          'Population: ' + item['population'],
          'Climate: ' + item['climate'],
          'Terrain: ' + item['terrain'],
          'Surface water: ' + item['surface_water']
        ]
      when "Species"
        [
          'Classification: ' + item['classification'],
          'Designation: ' + item['designation']
        ]
      when "Starships"
        [
          'Model: ' + item['model'],
          'Starship class: ' + item['starship_class']
        ]
      when "Vehicles"
        [
          "Model: " + item['model'],
          'Vehicle class: ' + item['vehicle_class']
        ]
    end

    data.join("<br>")
  end

end
