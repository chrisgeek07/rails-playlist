class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to playlists_path
    else
      render :new
    end
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end


  private

  def playlist_params
    params.require(:playlist).permit(:name, :genre, :description, :photo)
  end
end
