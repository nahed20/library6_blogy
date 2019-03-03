class BooksController < ApplicationController 
    def index 
        @books = Book.all
    end
#display book in the screen
def show
   @book = Book.find(params[:id])
    
end
# delete books from list 
def destroy 
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
end

#create new book
 def new
 end

#edith book list
def edit 
    @book = Book.find(params[:id]) 
end

#update book list 
def update 
     @book = Book.find(params[:id])
     if @book.update(book_params)
        redirect_to books_path
     else
        render 'edit'
     end
end
#crete new book
   def create 
   # puts Book.create(params[:book]) #crate new book
    @book = Book.new(book_params)
    if @book.save
        redirect_to books_path
    else 
        render "new"
   end
end

def  book_params
    params.require(:book).permit(:title, :author)
end


end