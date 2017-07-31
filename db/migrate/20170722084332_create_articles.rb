class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :desc
      t.float :author_id

      t.timestamps
    end
    add_index :articles, :title
  end
end
