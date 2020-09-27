class TweetsController < ApplicationController

  def index
    @tweets = Tweeet.all
  end

end
