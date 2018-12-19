class V1::PublicationsController < ApplicationController
  before_action :set_publication, only: [:index, :create, :destroy, :show, :edit, :update]

  def index
    @publications = @publication.publications
    render json: @publications, status: :ok
  end

  def create
    @publication = @publication.publications.create(publication_params)
    head :no_content
  end
  
  def destroy
    @publication.destroy
    head :no_content
  end
  
  def show
    render json: @publication, status: :ok
  end
    
  def update
    @publication.update(publication_params)
    head :no_content
  end
  
  private
  
  def set_publication
    @author = Author.find(params[:author_id])
    @publication = @author.publications.find(params[:id]) if params[:id]
  end
  
  def publication_params
    params.require(:author).permit(:title, :body, :publishdate, :id)
  end        
end
