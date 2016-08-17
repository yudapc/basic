class CreatePaymentHistories < ActiveRecord::Migration
  def change
    create_table :payment_histories do |t|
      t.integer :student_id
      t.integer :payment_id
      t.float :total
      t.datetime :paid_at
      t.integer :user_id
    end

    add_column :payment_histories, :created_at, :timestamptz
    add_column :payment_histories, :updated_at, :timestamptz
  end
end
