class Api::V1::FoldersController < ApplicationController

  def index
    folders = Folder.all
    render json: FolderSerializer.new(folders).to_serialized_json

  end

  def show
    folder = Folder.find_by(id: params[:id])
    render json: FolderSerializer.new(folder).to_serialized_json
  end

  def create
    if folder_params
      folder = Folder.create(name: folder_params[:name], user_id: folder_params[:user_id])
      render json: FolderSerializer.new(folder).to_serialized_json
    else
      render json: { error: "User not found"}, status: 404
    end

  end


  private


  def folder_params
    params.require(:folder).permit(:name, :user_id)
  end


end
