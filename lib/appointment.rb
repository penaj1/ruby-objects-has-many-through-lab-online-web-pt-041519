class Appointment

  attr_reader :name, :Appointment
  attr_accessor :doctor

  ALL = []
  
  def self.all
    ALL
  end
  
  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end
  def patient
    Patient.all.select do |patient|
      patient.doctor == self
    end
  end

  def doctor
    Patient.all.map do |patient|
      patient.doctor
    end
  end
end