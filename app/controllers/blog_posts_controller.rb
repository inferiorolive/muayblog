class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  # Helper method to redirect to root ("/") when show action doesn't return a blog post
  # It handles errors and sends people to another location
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
    def new
      @blog_post = BlogPost.new
    end
end
