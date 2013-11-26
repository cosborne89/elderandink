class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @q = Post.search(params[:q])
    @posts = @q.result(distinct: true)
    @unpublished_posts = Post.unpublished
  end

  def search
    index
    render :index
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comment = @post.comments.build(post_id: @post.id)
  end

  # GET /posts/new
  def new
    @post = Post.new
    redirect_to new_admin_post_path(@post)
  end

  # GET /posts/1/edit
  def edit
    redirect_to edit_admin_post_path(@post)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.unscoped.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :published, :published_date, :title_image, {:tag_ids => []}, :category_id, {:comment_ids => []}, :series_id)
    end
end
