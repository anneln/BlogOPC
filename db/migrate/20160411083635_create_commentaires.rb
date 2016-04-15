class CreateCommentaires < ActiveRecord::Migration
  def change
    create_table :commentaires do |t|
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
