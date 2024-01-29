class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    while @running
      print_menu
      user_input = gets.chomp.to_i
      route_action(user_input)
    end
  end

  def print_menu
    puts "Food Delivery 1.0"
    puts "What do you want to do?"
    puts "1. List all meals"
    puts "2. Add a new meal"
    puts "3. List all customers"
    puts "4. Add a new customer"
    puts "5. Exit"
    print "> "
  end

  def route_action(choice)
    case choice
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop!
    else
      puts 'Please select a valid option'
    end
  end

  def stop!
    @running = false
  end
end
