class TweetsController < ApplicationController
  before_action :show

  def index
    @tweets = Tweet.api_call
  end

end
