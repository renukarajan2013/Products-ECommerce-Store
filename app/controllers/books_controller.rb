class BooksController < ApplicationController

def new
end

def create
  @book  = Book.new(book_params)
  @book.save
  redirect_to @book
end

def show
  @product = Product.where(id: params[:product_id]).first
end

def index
  @books=Book.all
end

def destroy
  @book = Book.find(params[:id])
  @book.destroy
  redirect_to books_path
end

def edit
  @book = Book.find(params[:id])
end


def update
  @book = Book.find(params[:id])
  if @book.update(book_params)
    redirect_to @book
  else 
    render 'edit'
  end
end

private
def book_params
  params.require(:book).permit(:name ,:author, :price)
end

end
