class BusStop
attr_reader(:name)

 def initialize(name)
  @name = name
  @queue = []
 end

 def queue_length
   @queue.length()
 end

 def add_person_to_queue(person)
   @queue << person
 end

 def return_queue
   @queue
 end

 def pick_up
   @queue.clear()

 end


end
