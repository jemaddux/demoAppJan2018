class AddInfoToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :investing_as, :string
    add_column :users, :accredited_investor, :bool
  end
end
