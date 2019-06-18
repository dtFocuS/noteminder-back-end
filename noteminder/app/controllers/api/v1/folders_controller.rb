class Api::V1::FoldersController < ApplicationController

  def index
    folders = Folder.all
    render json: folders.to_json(:include => {
      :notes => {:only => [:title, :content]}
    }, :except => [:updated_at])

  end


  def create
    if folder_params
      folder = Folder.create(name: folder_params[:name], user_id: folder_params[:user_id])
      render json: folder
    else
      render json: { error: "User not found"}, status: 404
    end

  end


  private


  def folder_params
    params.require(:folder).permit(:name, :user_id)
  end


end
