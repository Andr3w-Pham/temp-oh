class HomeController < ApplicationController
  def index
    @users = User.all
    @host = Host.all
    @djs = Dj.all
    @songs = Song.all
  end

end
