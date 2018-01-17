class AddReferencesToBook < ActiveRecord::Migration[5.1]
  def change
  	add_reference :books, :category
  	add_reference :books, :subcategory
  end
end
