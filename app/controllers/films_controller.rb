class FilmsController < ApplicationController
  caches_action :show, expires_in: 1.hour

  def show
    results = SwapiFilm.search(params[:id])
    @film = if results.present?
      results.first
    else
      {}
    end
  end

  # def display_characters
  #   film = SwapiFilm.search(params[:title])
  #   all_people = SwapiPerson.get_all

  #   @char_names = []

  #   if film.first.present?
  #     @char_names = all_people.select {|p| film.first["characters"].include?(p["url"]) }
  #   end

  #   respond_to do |format|
  #     format.js
  #   end
  # end

end
