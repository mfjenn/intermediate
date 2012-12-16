class RepliesController < ApplicationController
  
  def new
    @reply = Reply.new
  end
  
  def create
    @reply = Reply.new(params[:reply])
    @reply.user_id = current_user.id
    @reply.post = Post.find_by_id(params[:post_id])
    if @reply.save
      redirect_to(post_path(@reply.post), :notice => 'Reply was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def edit
    @reply = Reply.find(params[:id])
  end
  
  def update
    @reply = Reply.find(params[:id])
    
    if @reply.update_attributes(params[:reply])
      redirect_to(reply, :notice => 'Reply was successfully updated.') 
    else
      render :action => "edit" 
    end
  end
  def index
   redirect_to posts_path
  end
end
