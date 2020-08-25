require_relative '../models/exercise'

class ExerciseController
  def initialize(logbook)
    @logbook = logbook
  end

  def add_test
    test_exercise = Exercise.new(pushups: 30, pullups: 20, squats: 30)
    @logbook.create(test_exercise)
  end
end
