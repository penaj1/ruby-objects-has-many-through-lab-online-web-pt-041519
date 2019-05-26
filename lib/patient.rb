class Patient

  attr_accessor :name, :doctor, :appointment

  ALL = []

  def initialize(name)
    @name = name
    @doctor = doctor
    @appointment = appointment
    ALL << self
  end

  def self.all
    ALL
  end

  def doctor
    @doctor
  end

end