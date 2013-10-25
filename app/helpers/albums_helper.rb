module AlbumsHelper
	def no_album?
      !Album.first
  end
end
