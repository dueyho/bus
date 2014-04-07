class AddColumnToStops < ActiveRecord::Migration
  def change
    add_column :stops, :time, :string
  end
end
