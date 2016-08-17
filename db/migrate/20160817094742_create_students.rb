class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :nis
      t.string :full_name
      t.string :gender
      t.integer :payment_status_id
    end

    add_column :students, :created_at, :timestamptz
    add_column :students, :updated_at, :timestamptz
  end
end
