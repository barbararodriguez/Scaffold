class CommentsController < ApplicationController
 def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(comment_params)
    redirect_to blog_path(@blog)
  end
    
 def destroy
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end
    
    def edit
        @blog = Blog.find(params[:blog_id])
        @comment = @blog.comments.find(params[:id])
    end

    def update
      @blog = Blog.find(params[:blog_id])
      @comment = @blog.comments.find(params[:id])

      if @blog.comments.update(blog_params)
        redirect_to @blog_path
      else
        render 'edit'
      end
    end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
