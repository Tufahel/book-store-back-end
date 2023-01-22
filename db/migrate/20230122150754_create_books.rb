class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :author_name
      t.string :book_name
      t.string :category
      t.bigint :progress

      t.timestamps
    end
  end
end
