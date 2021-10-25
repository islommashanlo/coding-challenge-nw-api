class MoviesController < ApplicationController


    def index
        movies = api_call("https://api.themoviedb.org/3/trending/movie/week?api_key=#{ENV["API_KEY"]}")
        render json: movies
    end


    def show
        movie = api_call("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=#{ENV["API_KEY"]}&language=en-US")
        render json: movie
    end

    def search_api 
        keywords = movie_params[:entry]
        results = api_call("https://api.themoviedb.org/3/search/movie?api_key=#{ENV["API_KEY"]}&language=en-US&query=#{keywords}&include_adult=false")
        render json: results
    end

    private

    def movie_params
        params.require(:movie).permit(:id, :entry)
    end
end
