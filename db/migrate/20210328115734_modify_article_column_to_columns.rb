class ModifyArticleColumnToColumns < ActiveRecord::Migration[6.1]
  def up
    add_column :comments, :article_ids, :string
    remove_column :comments, :article_id
  end

  def down
    remove_column :comments, :article_ids
    add_column :comments, :article_id, :integer
  end
end
