class SongsController < ApplicationController
  def index
  end

  def soundcloud_search

    # @track = soundcloud_API
    # get a tracks oembed data
    client = Soundcloud.new(:client_id => '5ea0d1a91cf7d70589d1a1c62535e05a',
                            :client_secret => 'eca7b4b76ce1f0b282f378f375051a8e')

    query = params[:search][:search]

    # =================================== using API data
    # @random_num = rand(290...5000)
    # @track = client.get("/users/#{@random_num}")
    @track = client.get('/tracks', :genres => query)
    @url = @track.sample["permalink_url"]

    # ========================================= using oembed URL
    # @artist_name =
    # @track_url = 'http://soundcloud.com/#{@artist_name}' # forss/flickermood
    @embed_info = client.get('/oembed', :url => @url)
    # # print the html for the player widget
    puts @embed_info['html']
    # puts @track_url
    # end
  end

  def show
  end

  def save
  end

  def soundcloud_API
    require 'soundcloud'

    client = Soundcloud.new(:client_id => '5ea0d1a91cf7d70589d1a1c62535e05a',
                              :client_secret => 'eca7b4b76ce1f0b282f378f375051a8e')
                              # :username => 'YOUR_USERNAME',
                              # :password => 'YOUR_PASSWORD')
    # track = client.get('/tracks/293')
    # return track
  end

end
