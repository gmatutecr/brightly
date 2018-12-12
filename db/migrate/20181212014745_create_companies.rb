class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :business_description
      t.string :location
      t.timestamps
    end
  end
end
