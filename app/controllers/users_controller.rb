class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	    @posts = @user.posts.includes(:photos, :likes, :comments)
	    @saveds = Post.joins(:bookmarks).where("bookmarks.user_id=?", current_user.id).includes(:photos, :likes, :comments) if @user == current_user
	end
end