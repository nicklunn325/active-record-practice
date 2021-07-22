class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      # t.datetime :datetime
      t.integer :doctor_id
      t.integer :patient_id
      
    end
  end
end
