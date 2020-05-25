class TodolistsController < ApplicationController

  def create
  	  book = Book.new(book_params)
      book.save
      redirect_to todolist_path(book.id) #詳細画面へリダイレクト
  end

  def index
  	  @books = Book.all
  	  @book = Book.new
  end


  def show
  	  @book = Book.find(params[:id])
  end


  def edit
  	  @book = Book.find(params[:id])
  end


  def update
  	  book = Book.find(params[:id])
  	  book.update(book_params)
  	  redirect_to todolist_path(book.id)
  end


  def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to todolists_path
  end





  private

  def book_params
  	  params.require(:book).permit(:title, :body,:image)

  end

end
