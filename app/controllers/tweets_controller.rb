class TweetsController < ApplicationController

  def index
    @tweets = Tweeet.all
  end

  def new
  end

end
