class AddForiegnKeyToAddress < ActiveRecord::Migration[6.0]
  def change
  	add_reference :addresses, :employees
  end
end
