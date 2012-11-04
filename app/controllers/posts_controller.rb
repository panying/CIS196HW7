class PostsController < ApplicationController

before_filter :authenticate_user!

def new
	@post = Post.new
end

def destroy

  @post = Post.find(params[:id])
  @post.destroy
 
  redirect_to action: :index
end

def create
	@post = Post.new(params[:post])
	if @post.save
		redirect_to action: :show, id: @post.id	
	else
		render 'new'
	end
end

def show
	@post = Post.find(params[:id])
end

def index
	#@posts = Post.excited
	@post_excited = Post.excited
	@post_happy = Post.happy
	@post_normal = Post.normal
	@post_disappointed = Post.disappointed
	@post_sad =Post.sad
	@post_angry=Post.angry
end

def edit
	@post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
 
  if @post.update_attributes(params[:post])
    redirect_to action: :show, id: @post.id
  else
    render 'edit'
  end
end


end
