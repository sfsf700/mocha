class AddDescriptionToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :description, :string, null: false
  end
end
