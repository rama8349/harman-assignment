class VirusController < ApplicationController
	def index
		# conn = Faraday.new
		# response = conn.get do |req|
		# 	req.url("https://api.covid19api.com/all")
		# end
		# data = JSON.parse(response.body)
		# # binding.pry
		 render :index
	end
end
