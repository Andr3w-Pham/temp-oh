class HomeController < ApplicationController
  def index
    @users = User.all
    @djs = Dj.all
  end

  def profile
  end
end
