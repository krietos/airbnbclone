class CreateRooms < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.column :name, :string
    end
    create_table :regions do |t|
      t.column :name, :string
      t.column :country_id, :int
    end
    create_table :cities do |t|
      t.column :name, :string
      t.column :region_id, :int
    end
    create_table :neighborhoods do |t|
      t.column :name, :string
      t.column :city_id, :int
    end
    create_table :rooms do |t|
      t.column :name, :string
      t.column :neighborhood_id, :int
      t.column :bedrooms, :int
      t.column :price, :decimal
    end
    create_table :reservations do |t|
      t.column :room_id, :int
      t.column :user_id, :int
      t.column :start_date, :date
      t.column :end_date, :date
    end
  end
end
