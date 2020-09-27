class TweetsController < ApplicationController

  def index
    @tweets = Tweeet.all
  end

  def new
  end

  def create
    Tweeet.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end


end
