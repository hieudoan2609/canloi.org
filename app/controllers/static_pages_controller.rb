class StaticPagesController < ApplicationController
  def cms
    @posts = Post.paginate(:page => params[:page], :per_page => 10).order("created_at desc")
  end
end
