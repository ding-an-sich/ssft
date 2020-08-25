require 'csv'
require_relative '../models/exercise'

class Logbook
  def initialize(csv_file)
    @exercises = []
    @csv_file = csv_file
    load_csv if File.exist?(@csv_file)
    @next_id = @exercises.length + 1
  end

  def create(exercise)
    exercise.id = @next_id
    @exercises << exercise
    save_csv
    @next_id += 1
  end

  private

  def load_csv
    csv_opts = { headers: :first_row, header_converters: :symbol, converters: :numeric }
    CSV.foreach(@csv_file, csv_opts) do |row|
      exercise = Exercise.new(row)
      @exercises << exercise
    end
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << %w[id pushups pullups squats]
      @exercises.each do |exercise|
        csv << [exercise.id, exercise.pushups, exercise.pullups, exercise.squats]
      end
    end
  end
end
