class CommentsController < ApplicationController
  def create
    @article = Article.find params[:article_id]
    save_comment
    redirect_to article_path(@article)
  end

  def bulk
    @articles = Article.all
    @comment = Comment.new
  end

  def bulk_insert
    save_comment
    redirect_to root_path
  end

  def destroy
    @article = Article.find params[:article_id]
    @comment = @article.comments.find(params[:id])
    @comment.article_ids = @comment.article_ids - [@article.id.to_s]
    if @comment.article_ids.empty?
      @comment.destroy
    else
      @comment.save
    end
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status, article_ids: [])
    end

    def save_comment
      @comment = Comment.where(body: comment_params[:body], commenter: comment_params[:commenter]).first_or_initialize
      @comment.status = comment_params[:status]
      if comment_params[:article_ids].present?
        @comment.article_ids += comment_params[:article_ids].select{|x| !x.blank? }
      else
        @comment.article_ids << params[:article_id]
      end
      @comment.save
    end
end
