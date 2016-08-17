class CreatePaymentStatuses < ActiveRecord::Migration
  def change
    create_table :payment_statuses do |t|
      t.string :name
    end

    add_column :payment_statuses, :created_at, :timestamptz
    add_column :payment_statuses, :updated_at, :timestamptz
  end
end
