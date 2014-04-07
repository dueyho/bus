class AddBusToStops < ActiveRecord::Migration
  def change
    add_column :stops, :bus, :string
  end
end
