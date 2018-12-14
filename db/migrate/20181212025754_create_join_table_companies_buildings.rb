class CreateJoinTableCompaniesBuildings < ActiveRecord::Migration[5.2]
  def change
    create_join_table :companies, :buildings do |t|
      # t.index [:gente_id, :person_id]
      # t.index [:person_id, :gente_id]
    end
  end
end
