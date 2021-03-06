require 'pry'
class Doctor
    attr_accessor :name
    attr_reader 
    attr_writer
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|my_app| my_app.doctor == self}
    end

    def patients
        appointments.map {|whom| whom.patient}
    end
end