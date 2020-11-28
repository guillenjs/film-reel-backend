class MoviesController < ApplicationController

    def index
        movies=Movie.all 

        render json: movies
    end

# this method will be used to show to find movies when first loaded to see what there likes and dislikes are.
    def show
        movie = Movie.find_by(movie_id: params[:id].to_i)

        if movie
        render json: movie
        else
          render json: {error: 'does not exist'}  
        end
    end


    def add_like 
        movie = Movie.find_or_create_by(movie_id: params[:id].to_i)
        if movie 
            movie.likes += 1
            movie.save
            render json: movie
        else 
            render json: {error: "no movie exist"}
        end
    end

    def add_dislike
        movie = Movie.find_or_create_by(movie_id: params[:id].to_i)
        if movie
            movie.dislikes += 1
            movie.save
            render json: movie
        else
            render json: {error: " no movie exist"}
        end
    end


end
