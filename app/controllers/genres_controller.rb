class GenresController < ApplicationController

    def index
        genres = api_call("https://api.themoviedb.org/3/genre/movie/list?api_key=#{ENV["API_KEY"]}&language=en-US")
        render json: genres
    end

end
