class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :desc
      t.float :author_id

      t.timestamps
    end
    add_index :books, :title
  end
end
