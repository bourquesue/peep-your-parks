class ParksController < ApplicationController
  def index
  	@parks = Park.all
  end
  def show
  	@park = Park.find(params[:id])
  	client = Instagram.client(access_token:'19071172.1677ed0.869497b0c77445809fd5c993a59c8951')
  	@photos = client.tag_recent_media(@park.hashtag)
  end
end