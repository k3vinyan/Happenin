class AddEmailToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :email, :text
  end
end
