class AddBookIdToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :book, foreign_key: true
  end
end
