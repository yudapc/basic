class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name
      t.text :description
      t.float :total
    end

    add_column :payments, :created_at, :timestamptz
    add_column :payments, :updated_at, :timestamptz
  end
end
