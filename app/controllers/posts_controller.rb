class PostsController < ApplicationController
  respond_to :json

  def index
    @posts = Post.all
    # respond_with @posts, each_serializer: OtherPostSerializer,
    #                      debug: true,
    #                      fields: %i(id title excerpt debug)
    render json: @posts, each_serializer: OtherPostSerializer,
                         debug: false,
                         fields: %i(id title excerpt debug)
  end

  def show
    @post = Post.find(params[:id])
    # respond_with @post, debug: true
    render json: @post, debug: true
  end
end
