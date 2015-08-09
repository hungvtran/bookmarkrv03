class BookmarksController < ApplicationController

  def new
  	@bookmarks = current_user.bookmarks.build
  end

  def edit
  end

  def show
    #if data[0..34] == '<!DOCTYPE NETSCAPE-Bookmark-file-1>'
      #data.sub!("<!DOCTYPE NETSCAPE-Bookmark-file-1>", "<!DOCTYPE NETSCAPE-Bookmark-file-1>\n
      #<link rel=\"stylesheet\" type=\"text/css\" href=\"app\assets\stylesheets\application.css\">")
      #@new_url = current_user.bookmarks.build(url: 'data')
  end

  def create
  	@placeholder = params[:bookmark][:file]
    data = @placeholder.read
    @bookmarks = current_user.bookmarks.build(bookmark_params)
    #can't do bookmarks.url.save because save is acting on string. Save is an ActiveRecord method. 

    #@bookmarksarray.each do | url |
      #@bookmarks.url = url
      #if !@bookmarks.url.nil?
        #@bookmarks.save
      #end
    #end

      if @bookmarks.save
        flash[:success] = "Bookmarks Saved"
        redirect_to bookmarks_path
      else
        render :text => 'did not load correctly, please upload a bookmark file'
      end
    end
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
      params.require(:bookmark).permit(:url)
  end

end
