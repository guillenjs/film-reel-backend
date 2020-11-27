class MoviesController < ApplicationController

    def index
        movies=Movie.all 

        render json: movies
    end

# this method will be used to show to find movies when first loaded to see what there likes and dislikes are.
    def show
        movie = Movie.find_by(movie_id: params[:id].to_i)

        render json: movie
    end


    def add_like 
        movie = Movie.find_or_create_by(movie_id: params[:id].to_i)
        if movie 
            movie.like += 1
            movie.save
            render json: movie_found
        else 
            render json: {error: "no movie exist"}
        end
    end

    def add_dislike
        movie = Movie.find_or_create_by(movie_id: params[:id].to_i))
        if movie
            movie.dislike += 1
            movie.save
        else
            render json: {error: " no movie exist"}
        end
    end


end
