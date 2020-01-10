class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
    @categories = Category.all
  end

  def create
    @book = Book.new title: params[:title], category_id: params[:category_id]
    if @book.save
      flash[:success] = "Le livre a été bien été créé."
      redirect_to "/books"
    else
      flash[:error] = "Le livre n'a pas été bien été créé. : #{@book.errors.full_messages.join(', ')}"
      @books = Book.all
      render "index"
    end
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  def update
    @book = Book.find(params[:id])
     if @book.update title: params[:title]
       flash[:success] = "Le livre a été mis à jour."
       redirect_to "/books/#{params[:id]}"
     else
       render 'show'
     end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end
