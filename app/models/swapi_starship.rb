class SwapiStarship

  include HTTParty
  base_uri 'swapi.co/api/starships'

  def self.get_all(page = nil)
    races = []
    if page.present?
      response = get("/", query: { page: page })

      races = if response.code == 200
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
          races << response.parsed_response["results"]

          if !response.parsed_response["next"].present?
            break
          end
        else
          races << []
          break
        end
      end
    end

    races.flatten
  end
end