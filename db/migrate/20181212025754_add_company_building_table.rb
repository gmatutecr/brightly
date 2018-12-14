class AddCompanyBuildingTable < ActiveRecord::Migration[5.2]
  def change
    create_table :companies_buildings, id: false do |t|
      t.belongs_to :company, index: true
      t.belongs_to :building, index: true
    end
  end
end
