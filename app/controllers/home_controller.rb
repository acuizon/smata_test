class HomeController < ApplicationController

  def index
    @films = SwapiFilm.get_all
    # @films.sort_by! {|f| f['episode_id'] }
  end

  def search
    @films = SwapiFilm.search(params[:title])
    # @films.sort_by! {|f| f['episode_id'] }

    render :index
  end

end
