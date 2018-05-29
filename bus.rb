class Bus

attr_reader(:route_number, :destination)


  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

 def drive
   return "brum brum"
 end

 def number_of_passengers
   @passengers.length()
 end

 def pick_up(passenger)
   @passengers << passenger
 end

 def drop_off(passenger)

   @passengers.delete(passenger) if @passengers.include?(passenger)
 end


 def empty
   @passengers.clear()
 end



end
