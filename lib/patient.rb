class Patient

  attr_accessor :name, :doctor, :appointment

  ALL = []

  def initialize(name)
    @name = name
  end

  def self.all
    ALL
  end

  def doctor
    @doctor
  end

end