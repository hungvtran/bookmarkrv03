module BookmarksHelper
	def user_has_no_bookmarks?
		current_user.bookmarks.empty?
	end
end
