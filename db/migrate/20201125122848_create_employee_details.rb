railsclass CreateEmployeeDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_details do |t|
      t.string :address
      t.string :city
      t.integer :pincode
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
