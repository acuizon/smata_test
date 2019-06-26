class SwapiPerson

  include HTTParty
  base_uri 'swapi.co/api/people'

  def self.get_all(page = nil)
    people = []
    if page.present?
      response = get("/", query: { page: page })

      people = if response.code == 200
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
          people << response.parsed_response["results"]

          if !response.parsed_response["next"].present?
            break
          end
        else
          people << []
          break
        end
      end
    end

    people.flatten
  end

  def self.get_person(id)
    response = get("/#{id}")
    if response.code == 200
      response.parsed_response
    else
      {}
    end
  end
end