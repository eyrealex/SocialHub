class TweetsController < ApplicationController
  before_action :index
  def index
    @tweets = Tweet.spacex
  end
end
