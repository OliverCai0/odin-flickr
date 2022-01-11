class StaticPagesController < ApplicationController
	require 'flickr'

	def index
		if params[:user_id]
			flickr = Flickr.new(ENV['FLICKR_KEY'], ENV['FLICKR_SECRET'])
			@info = flickr.people.getPhotos(user_id: params[:user_id])
		end
	end
end
