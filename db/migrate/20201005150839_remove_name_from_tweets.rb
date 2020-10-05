class RemoveNameFromTweets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweeets, :name, :string
  end
end
