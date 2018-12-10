class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.find_all {|appointment| appointment.patient == self}
  end

  def self.all
    @@all
  end

  def doctors
    #binding.pry
    self.appointments.map {|appointment| appointment.doctor}
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end
