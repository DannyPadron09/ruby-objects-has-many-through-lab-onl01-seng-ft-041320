require "pry"
class Patient

    attr_accessor :name, :patient

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        # binding.pry
        Appointment.all.select { |appointments| appointments.patient == self}
    end

    def doctors
        # binding.pry
        # Appointment.all.select{ |app| app.patient == self}
        self.appointments.map{ |app| app.doctor}
    end
end