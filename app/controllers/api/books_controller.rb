class Api::BooksController < ApplicationController
    include Response

    def index
        @books = Book.all
        render json: @books
    end

    def show
        @book = Book.find(params[:id])
        render json: @book
    end

    def new
        @user = user.id
        @books = @user.books
        render json: @books, status: :ok
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            render json: @book
        else
            render json: @book.errors.full_messages, status: 422
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        render json: book
    end

    private

    def book_params
        params.permit(:user_id, :author_name, :book_name, :category, :progress)
    end
end
