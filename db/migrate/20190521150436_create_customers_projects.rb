class CreateCustomersProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :customers_projects do |t|
      t.integer :customer_id
      t.integer :project_id
    end
  end
end
