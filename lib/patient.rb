require_relative 'doctor.rb'
require_relative 'appointment.rb'

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date)
    Appointment.new(date,self,doctor)
  end

  def self.all
    @@all
  end

  def appointments
   Appointment.all
  end

  def doctors
    Appointment.all.collect do |appointment|
      appointment.doctor
    end
  end

end
