class MainController < ApplicationController
  def home
  	@clients = Client.all
  end
end
