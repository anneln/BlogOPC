class AddCommentaireIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :commentaire_id, :integer
    add_index :articles, :commentaire_id
  end
end
