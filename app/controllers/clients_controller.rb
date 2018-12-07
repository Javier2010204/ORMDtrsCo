class ClientController < ApplicationController
	before_filter :find_model

	def index
		@clients = Client.all
	end

	def new
		@client = Client.new
	end

	private
	def find_model
		@model = Client.find(params[:id]) if params[:id]
	end
end