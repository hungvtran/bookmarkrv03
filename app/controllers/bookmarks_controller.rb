class BookmarksController < ApplicationController

  def new
  	@bookmarks = current_user.bookmarks.build
  end

  def edit
  end

  def show
  end

  def create
  	#@placeholder = [:bookmarks][:file]
  	@bookmarks = current_user.bookmarks(bookmark_params)

  	#@bookmarks = current_user.bookmarks.build(bookmark_params)
  	#data = @bookmarks.
  	data = @bookmarks.file.read

  	render :text => data
  end

  def destroy
  end

  def update
	#uploaded_io = params[:bookmarks][:file]
	#@bookmarks = current_user.bookmarks(bookmark_params)
  	#@bookmarks = current_user.bookmarks.build(bookmarks_params)
  	#data = @bookmarks.
  	#data = @bookmarks.read
  	
  	#render :text => data
	end

	private
	def bookmark_params
      params.require(:bookmark).permit(:file)
    end

end
