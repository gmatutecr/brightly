class AddRefToPeople < ActiveRecord::Migration[5.2]
  def change
    change_table :people do |t|
      t.belongs_to :company
    end
  end
end
