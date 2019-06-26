class SwapiPlanet

  include HTTParty
  base_uri 'swapi.co/api/planets'

  def self.get_all(page = nil)
    planets = []
    if page.present?
      response = get("/", query: { page: page })

      planets = if response.code == 200
        response.parsed_response["results"]
      else
        []
      end
    else
      page = 0
      loop do
        page += 1
        response = get("/", query: { page: page })
        
        if response.code == 200
          planets << response.parsed_response["results"]

          if !response.parsed_response["next"].present?
            break
          end
        else
          planets << []
          break
        end
      end
    end

    planets.flatten
  end
end