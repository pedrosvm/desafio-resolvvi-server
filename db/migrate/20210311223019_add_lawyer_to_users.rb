class AddLawyerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :lawyer, foreign_key: true
  end
end
