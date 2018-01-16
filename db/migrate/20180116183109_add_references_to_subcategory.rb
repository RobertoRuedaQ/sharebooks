class AddReferencesToSubcategory < ActiveRecord::Migration[5.1]
  def change
  	add_reference :subcategories, :category
  end
end
