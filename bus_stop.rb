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


end
