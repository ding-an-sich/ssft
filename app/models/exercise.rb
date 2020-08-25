class Exercise
  attr_accessor :id
  attr_reader :pushups, :pullups, :squats

  def initialize(attributes = {})
    @id = attributes[:id]
    @pushups = attributes[:pushups]
    @pullups = attributes[:pullups]
    @squats = attributes[:squats]
  end
end
