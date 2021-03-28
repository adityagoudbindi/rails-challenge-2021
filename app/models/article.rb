class Article < ApplicationRecord
  include Visible

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  after_destroy do
    self.comments.each do |comment|
      comment.article_ids = comment.article_ids - [self.id.to_s]
      if comment.article_ids.empty?
        comment.destroy
      else
        comment.save
      end
    end
  end


  def comments
    Comment.where("article_ids LIKE '%?%'",self.id)
  end

end
