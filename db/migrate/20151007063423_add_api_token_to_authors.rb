class AddApiTokenToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :api_token, :string
  end
end
