class ProjectsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @project = @post.projects.create(params[:project])
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @project = @post.projects.find(params[:id])
    @project.destroy
    redirect_to post_path(@post)
  end
end
