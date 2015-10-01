class SongsController < ApplicationController

  def index
    @songs = current_user.songs.all
    render 'index'

  end

  def create
    @song = Song.create(song_params)
    redirect_to user_songs_path current_user
  end

  def show
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:user_id, :stream_url, :title, :artist)
  end


end
