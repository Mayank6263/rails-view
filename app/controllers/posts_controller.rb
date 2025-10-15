class PostsController < ApplicationController
  def index
    Post.first.check
  end

  def new
    @post = Post.new
  end

  def create
  end

  def show
    @posts = Post.first
    render json: @posts, serializer: PostSerializer
  end

  def update
  end

  def delete
  end

  private
  def post_params
    # params.expect(post: [ ])
  end
end
