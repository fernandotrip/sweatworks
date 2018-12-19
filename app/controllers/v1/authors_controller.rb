class V1::AuthorsController < ApplicationController
    before_action :set_author, only: [:show, :update, :destroy]

    def index
      @authors = author.all
      render json: @authors, status: :ok
    end
  
    def create
      @author = author.create!(author_params)
      render json: @author, status: :created
    end
  
    def update
      @author.update(author_params)
      head :no_content
    end
  
    def show
      render json: @author, status: :ok
    end
  
    def destroy
      @author.destroy
      head :no_content
    end  
  
    private
  
    def set_author
      @author = author.find(params[:id])
    end
  
    def author_params
      params.require(:author).permit(:name, :email, :birth, :id)
    end    
end
