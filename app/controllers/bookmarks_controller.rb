class BookmarksController < ApplicationController
  include BookmarksHelper

  def new
  	@bookmarks = current_user.bookmarks.build
  end

  def edit
  end

  def show
      @links = current_user.bookmarks.last.links unless user_has_no_bookmarks?
  end

  def create

    data = params[:bookmark][:file].read
    @new_links = current_user.bookmarks.build(links: data.force_encoding('UTF-8'))

      if @new_links.save
        flash[:success] = "Bookmarks Saved"
        redirect_to bookmarks_path
      else
        flash[:alert] = "Bookmark file did not load correctly. Please upload a Bookmark file from browser"
      end

  end

  def destroy
  end

  def update
	end

	private
	def bookmark_params
      params.require(:bookmark).permit(:links)
  end

end