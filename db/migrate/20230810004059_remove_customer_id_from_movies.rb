class RemoveCustomerIdFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :customer_id, :bigint
  end
end

