class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :genre, :description, :photo)
  end
end
