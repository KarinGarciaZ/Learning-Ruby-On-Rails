class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    #render plain: params[:post].inspect
    @book = Book.new(book_params)

    if (@book.save)
      redirect_to @book
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    
    if (@book.update(book_params))
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy
    redirect_to books_path
  end

  private 
  
  def book_params
    params.require(:post).permit(:title, :body, :price)
  end   
end
