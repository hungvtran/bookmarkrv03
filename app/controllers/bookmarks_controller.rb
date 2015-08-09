class BookmarksController < ApplicationController

  def new
  	@bookmarks = Bookmark.new
  end

  def edit
  end

  def show
  	@user = current_user
  	@bookmarks = @user.bookmarks
  end

  def create
  end

  def destroy
  end

  def update
	  uploaded_io = params[:bookmarks][:file]
	end

	private
	def micropost_params
      params.require(:bookmark).permit(:content)
    end

end
