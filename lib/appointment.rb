require 'pry'
class Appointment
    attr_accessor :doctor, :patient, :date
    attr_reader 
    attr_writer
    
    @@all = []
    
    def initialize(date, patient, doctor)
        @doctor = doctor
        @patient = patient
        @date = date
        @@all << self
    end
    
    def self.all
        @@all
    end
end
