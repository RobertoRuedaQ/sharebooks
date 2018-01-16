class AddColumnUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :age, :integer
  	add_column :users, :interests, :text, array: true, default: [], using: "(string_to_array(interests_ids, ','))"
  end
end
