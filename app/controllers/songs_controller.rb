class SongsController < ApplicationController

  def index
  end


  def create
    @params = params[:song][:title]
    p @tracks = client.get('/tracks',:q => "#{params[:song][:title]}")
    render 'show'
    @tracks.each do |track |
      p track.stream_url
      p track.id
    end
  end





end
