class HomeController < ApplicationController
  def index
    @users = User.all
    @djs = Dj.all
    @songs = Song.all
  end
  
end
