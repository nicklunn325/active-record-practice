class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :doctors, through: :appointments

    def doctor_names
        self.doctors.map{|doctor| doctor.name}.uniq
    end

    def self.order_by_age
        # Patient.all.order_by
        Patient.order(age: :desc)
        # Patient.all.sort do |a,b|
        #     b.age <=> a.age
        # end
        # Patient.where(age > 60).pluck(:name)
    end
end