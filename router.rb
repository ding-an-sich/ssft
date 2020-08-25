class Router
  def initialize(exercises_controller)
    @exercises_controller = exercises_controller
    @running = true
  end

  def run
    print `clear`
    puts 'Testing'
    @exercises_controller.add_test
    puts 'Testing complete'
  end
end
