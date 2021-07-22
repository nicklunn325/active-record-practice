class Doctor < ActiveRecord::Base
    has_many :appointments
    has_many :patients, through: :appointments

    def patient_names
        # self.patients.map{|patient| patient.name}.uniq
        self.patients.pluck(:name).uniq
    end

    def self.speciality(speciality)
        # self.all.filter do |doctor|
        #     doctor.speciality == speciality
        # end

        self.where(speciality: speciality)

    end

end