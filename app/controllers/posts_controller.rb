class PostsController < ApplicationController
  before_action :authenticate_account!, except: [ :index, :show ]
  before_action :set_post, only: [:show]
  before_action :auth_subscriber, only: [:new]

  def index
    @posts = Post.all
    @search = params["search"]
    if @search.present?
      @title = @search["title"]
      @posts = Post.where(title: @title)
    end
  end

  def show
    @comment = Comment.new
  end

  def edit
    @community = Community.find(params[:community_id])
    @post = Post.find(params[:account_id])
  end

  def new
    @community = Community.find(params[:community_id])
    @post = Post.new
  end

  def create
    @post = Post.new post_values
    @post.account_id = current_account.id
    @post.community_id = params[:community_id]

    if @post.save
      redirect_to community_path(@post.community_id)
    else
      @community = Community.find(params[:community_id])
      render :new
    end
  end

  def destroy
    @community = Community.find(params[:id])
    @post = @community.posts.find(params[:id])
    @post.destroy
    redirect_to communities_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :post_id, :search)
  end

  def set_post
    @post = Post.includes(:comments).find(params[:id])
  end

  def auth_subscriber
    unless Subscription.where(community_id: params[:community_id], account_id: current_account.id).any?
      redirect_to root_path, flash: { danger: "You are not authorized to view this page!" }
    end
  end

  def post_values
    params.require(:post).permit(:title, :body)
  end

end
