class IdeasController < ApplicationController
  respond_to :json

  def index
    respond_with Idea.all
  end

  def show
    respond_with Entry.find(params[:id])
  end

  def create
    respond_with Idea.create(params[:idea])
  end

  def update
    respond_with Idea.update(params[:id], params[:idea])
  end

  def destroy
    respond_with Idea.destroy(params[:id])
  end
end
