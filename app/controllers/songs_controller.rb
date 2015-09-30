class SongsController < ApplicationController

  def index
  end

  def create
    @params = params[:song][:title]
    @tracks = client.get('/tracks',:q => "#{params[:song][:title]}")
    render 'show'
  end

end
