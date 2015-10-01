class SoundcloudController < ApplicationController

  def api
    @params = params[:title]
    @tracks = client.get('/tracks',:q => "#{params[:title]}")
    render "/songs/show"
  end

end