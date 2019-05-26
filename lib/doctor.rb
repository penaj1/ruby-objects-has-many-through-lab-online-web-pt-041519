class Doctor

  attr_accessor :name, :appointment, :patient

  @@all_doctors = []

  def initialize(name)
    @name = name
    @@all_doctors << self
  end

  def self.all
    @@all_doctors
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Patient.all.select do |appointment|
      appointment.patient == self
    end
  end

  def patients
    Patient.all.map do |appointment|
      appointment.doctor
    end
  end

end