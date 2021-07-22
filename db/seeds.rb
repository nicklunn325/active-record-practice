# create patients, doctors and appointments

20.times do 
    Patient.create(name: Faker::Name.name, age: rand(18..99))
end

20.times do
    Doctor.create(name: Faker::Name.name, speciality: Faker::Name.first_name, degree: Faker::Name.last_name)
end

50.times do
    Appointment.create(date: Date.ordinal(2021, 208), time: Time.now, doctor_id: rand(1..20), patient_id: rand(1..20))
end

50.times do
    Appointment.create(date: Date.ordinal(2021, 200), time: Time.now, doctor_id: rand(1..20), patient_id: rand(1..20))
end

10.times do
    Appointment.create(date: Date.today, time: Time.now, doctor_id: rand(1..20), patient_id: rand(1..20))
end
