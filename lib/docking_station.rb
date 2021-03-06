require_relative 'bike'

class DockingStation
    
    DEFAULT_CAPACITY = 20
    attr_accessor :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = []
    end
    
    def release_bike
        fail 'No Bikes Available' if empty?
        bikes.pop
    end

    def dock(bike)
        fail 'Docking Station Full' if full?
        bikes << bike
    end

    private
    
    attr_reader :bikes

    def full?
        bikes.count >= capacity
    end

    def empty?
        bikes.empty?
    end
end