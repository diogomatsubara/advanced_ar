class AddLoginAndPassToPeople < ActiveRecord::Migration
  def change
    add_column :people, :login, :string
    add_column :people, :pass, :string
  end
end
