require 'pry'

class Doctor
  attr_accessor :name, :appointment, :patients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(name, date)
    #binding.pry
    Appointment.new(date, name, self)
  end

  def appointments
    Appointment.all.find_all {|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}
  end

end
