class Doctor

  attr_accessor :name, :appointment, :patient

  @@all_doctors = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def new_appointment(date, patient)
    appointment = Patient.new(date, self, patient)
    self.appointment.last
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