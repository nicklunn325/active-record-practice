# doctors appointments and patients

doctor --------- < appointment > ---------- patient
:name :date :name
:speciality :time :age
:degree :doctor_id
:patient_id

doctor --------- < patient -----------< appointment
:name :name :date
:speciality :age :time
:degree :doctor_id :patient_id
