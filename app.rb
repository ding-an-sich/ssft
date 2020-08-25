require_relative './app/repositories/logbook'
require_relative './app/controllers/exercises_controller'
require_relative 'router'

CSV_FILE = File.join(__dir__, 'data/circuits.csv')
logbook = Logbook.new(CSV_FILE)
exercises_controller = ExerciseController.new(logbook)
router = Router.new(exercises_controller)
router.run
