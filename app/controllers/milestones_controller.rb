class MilestonesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @milestone = @post.milestones.create(params[:milestone])
    redirect_to milestones_post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @milestone = @post.milestones.find(params[:id])
    @milestone.destroy
    redirect_to milestones_post_path(@post)
  end
end
