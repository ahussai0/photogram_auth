class MylikesController < ApplicationController
  def index
    @user = current_user
    @likes = current_user.likes.all

    render("my_likes/index.html.erb")
  end
end
