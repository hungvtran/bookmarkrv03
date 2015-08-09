class BookmarksController < ApplicationController

  def new
  	@bookmarks = current_user.bookmarks.build
  end

  def edit
  end

  def show
  end

  def create
  	@placeholder = params[:bookmark][:file]
    data = @placeholder.read
    array = []
    @bookmarksarray = []
    @bookmarks = current_user.bookmarks.build #will save add new row into bookmarks but associate user_id with current_user
    
    data.each_line do |line|
    array << line.match(/A HREF=(["'])(?:(?=(\\?))\2.)*?\1/)
    end
    
    array.each do | bookmark |
    @bookmarksarray << bookmark.to_s.match(/(["'])(?:(?=(\\?))\2.)*?\1/).to_s.gsub('"', '') unless bookmark == nil
    
    end 
    
    @bookmarksarray.slice!(0)
    
    #can't do bookmarks.url.save because save is acting on string. Save is an ActiveRecord method. 

    #@bookmarksarray.each do | url |
      #@bookmarks.url = url
      #if !@bookmarks.url.nil?
        #@bookmarks.save
      #end
    #end

  	render :text => @bookmarksarray
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
