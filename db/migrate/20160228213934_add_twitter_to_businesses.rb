class AddTwitterToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :twitterDisplayName, :string
    add_column :businesses, :twitterUid, :string
    add_column :businesses, :twitterProfile_image_url, :string
    add_column :businesses, :twitterUsername, :string
  end
end
