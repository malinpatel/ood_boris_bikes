require 'docking_station'

class Van
  def collect_broken_bike(broken_bike)
    fail "This bike still works" if broken_bike.working == true
    return broken_bike
  end
end
