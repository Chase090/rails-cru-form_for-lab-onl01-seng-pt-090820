class GenresController < ApplicationController
    before_action :set_genres, only: [:show, :edit, :update]
    
    def new
	  @genre = Genre.new
	end

	def create
	  @genre = Genre.create(post_params(:name))
	  redirect_to genre_path(@genre)
	end

	def show
	
	end

	def edit
	 
	end

	def update
      @genre.update(post_params(:name))
      @genre.save
	  redirect_to genre_path(@genre)
	end

	private

    def set_genres
        @genre = Genre.find(params[:id])
    end


	def post_params(*args)
		params.require(:genre).permit(*args)
	end
end
