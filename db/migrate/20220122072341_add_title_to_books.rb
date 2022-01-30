class AddTitleToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :title, :string
    add_column :books, :body, :string
  end
end
