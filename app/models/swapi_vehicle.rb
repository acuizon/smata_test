class SwapiVehicle

  include HTTParty
  base_uri 'swapi.co/api/vehicles'

  def self.get_all(page = nil)
    vehicles = []
    if page.present?
      response = get("/", query: { page: page })

      vehicles = if response.code == 200
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
          vehicles << response.parsed_response["results"]

          if !response.parsed_response["next"].present?
            break
          end
        else
          vehicles << []
          break
        end
      end
    end

    vehicles.flatten
  end
end