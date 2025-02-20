class TacosController < ApplicationController

  def index
    @fillings = ["Carnitas", "Al Pastor", "Steak", "Fish", "Veggie"]
    # render :template => "tacos/index"
  end

  def create
    #   # start with a new Post
    @post = Post.new
    #   # assign user-entered form data to Company's columns
    @post["author"] = params["author"]
    @post["body"] = params["body"]
    @post["image"] = params["image"]
    #   # save Company row
    @post.save
    #   # redirect user
    redirect_to "/posts"
  end

end