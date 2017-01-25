class SongsController < ApplicationController

  def soundcloud_search
    # get a tracks oembed data
    client = Soundcloud.new(:client_id => '5ea0d1a91cf7d70589d1a1c62535e05a',
                            :client_secret => 'eca7b4b76ce1f0b282f378f375051a8e')

    @query = params[:search][:search]
    @track = client.get('/tracks', :genres => @query)

    @sample = @track.sample
    @url = @sample["permalink_url"]
    @title = @sample["title"]
    @artwork = @sample["artwork_url"]
    @embed_info = client.get('/oembed', :url => @url)
    # print the html for the player widget
    puts @embed_info['html']
    @song = Song.new
  end

  def index
  end

  def show
    @song = Song.find_by :id => params["id"]
  end

  def create
    client = Soundcloud.new(:client_id => '5ea0d1a91cf7d70589d1a1c62535e05a',
                            :client_secret => 'eca7b4b76ce1f0b282f378f375051a8e')

    @track = client.get("/tracks/#{ params[:song_id] }")
    @song = Song.new({
      :url => @track[:permalink_url],
      :artwork => @track[:artwork_url],
      :name => @track[:title],
      :user_id => @current_user.id
    })

    if @song.save
      redirect_to user_path(@current_user)
    end

  end

  def destroy
    song = Song.find_by :id => params["id"]
    song.destroy
    redirect_to user_path
  end

end
