class BooksController < ApplicationController

before_action :set_book, only: [:show]

def index
	@books =  Book.all
end

def new
	@book = Book.new
end
def create
	@book = Book.create(book_params)
	@book.save

	respond_to do |format|
		format.html { redirect_to @book }
	end
end

def show
end

private

def book_params
	params.require(:book).permit(:title, :desc)
end

def set_book
	@book = Book.find(params[:id])
end

end
