class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :pages
      t.string :image
      t.text :abstract
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
