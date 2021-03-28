class Comment < ApplicationRecord
  include Visible

  serialize :article_ids, Array

  before_save do
    self.article_ids = self.article_ids.flatten.uniq
  end
end
