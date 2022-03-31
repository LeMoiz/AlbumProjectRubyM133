class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

    def new
      @album = Album.new
    end

    def create
      @album = Album.new(album_params)
      if @album.save
        redirect_to action: "index"
      else
        render action: "new"
      end
    end

    def show
   position = 0
   @album = Album.find(params[:id])
   @album.songs.each do |s|
     position += 1
     s.position = position
     s.save
   end
end

    def album_params
       params.require(:album).permit(:band, :title, :year, :duration)
      end

    def edit
      @album = Album.find(params[:id])
    end

    def update
      @album = Album.find(params[:id])
      if @album.update(album_params)
        redirect_to action: "index"
      else
        @songs = Song.all render action: "edit"
    end
  end

    def destroy
      @Albums = Album.all
  end
