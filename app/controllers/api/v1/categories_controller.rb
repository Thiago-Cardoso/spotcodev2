class Api::V1::CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def artists
        Artist.joins(:albums).where(albums: { id: self.albums.ids }).distinct
    end
     
    def songs
         Song.joins(:album).where(songs: { id: self.albums.ids }).distinct
    end

    def show
        @category = Category.find(params[:id])
    end
end
