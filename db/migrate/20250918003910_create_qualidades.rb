class CreateQualidades < ActiveRecord::Migration[8.0]
  def change
    create_table :qualidades do |t|
      t.timestamps
    end
  end
end
