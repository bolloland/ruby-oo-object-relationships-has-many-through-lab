require 'pry'
class Patient
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

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|my_app| my_app.patient == self}
    end

    def doctors
        appointments.map {|whom| whom.doctor}
    end
end
