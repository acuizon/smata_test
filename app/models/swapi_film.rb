class SwapiFilm

  include HTTParty
  base_uri 'swapi.co/api/films'

  def self.get_all
    response = get("/")
    if response.code == 200
      response.parsed_response["results"]
    else
      []
    end
  end

  def self.get_film(id)
    response = get("/#{id}")
    if response.code == 200
      response.parsed_response
    else
      {}
    end
  end

  def self.search(str)
    response = get("/", query: { search: str.titleize })
    if response.code == 200
      response.parsed_response["results"]
    else
      []
    end
  end
end