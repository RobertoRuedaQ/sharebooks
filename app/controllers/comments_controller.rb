class CommentsController < ApplicationController

def new
	@comment = Comment.new
end

def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(comment_params)
    redirect_to book_path(@book)
  end



private
	def comment_params
    params.require(:comment).permit(:comment, :user_id, :book_id)
  end

end
