class SongsController < ApplicationController

  def index
  end


  def create
    @params = params[:song][:title]
    @tracks = client.get('/tracks',:q => "#{params[:song][:title]}")
    render 'show'
    # @tracks.each do |c|
    #   p c.stream_url
    # end

  end





end
