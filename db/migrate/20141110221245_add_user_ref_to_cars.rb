class AddUserRefToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :user, index: true
  end
end
