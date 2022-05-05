# README

Pour lancer et tester vous pouvez faire:

- bundle install
- rails db:create
- rails db:migrate
- rails db:seed

d = Doctor.find(152)
d.patients
d.appointments
d.appointments.first.patient
