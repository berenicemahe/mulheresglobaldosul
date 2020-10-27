grandma = {depart_level: 1, level_expected: 2, quantity: 1}
grandma_son = {depart_level: 1, level_expected: 2, quantity: 1}
two_kids = {depart_level: 1, level_expected: 4, quantity: 1}
three_friends = {depart_level: 1, level_expected: 4, quantity: 3}
kid_admirator = {depart_level: 1, level_expected: 6, quantity: 0.5}
a_woman_and_two_men = {depart_level: 1, level_expected: 6, quantity: 3}
a_studious_kid = {depart_level: 2, level_expected: 6, quantity: 0.5}

adult = 8
children = 4
car_capacity = 3
people_in_the_lift = 0
elevator_floors = [1, 2, 3, 4, 5, 6]
ways_of_the_elevator = 0

def how_many_ways
  if elevator_floors == 0
    ways_of_the_elevator += 1
  else
    ways_of_the_elevator += 0
  end
end

def space_in_the_lift
  if people_in_the_lift == 3
    print "The elevator is full, wait for your turn"
  elsif people_in_the_lift == 2.5
    print "We can still bring one child"
  else
    print "There is still some space"
  end
end

def riched
  if level_expected == level_of_the_elevator
    people_in_the_lift -= 1
    if people_in_the_lift == 0
      level_of_the_elevator - 5
    else
      level_of_the_elevator += 1
    end
  else
    if level_of_the_elevator == 5
      level_of_the_elevator - 5
    else
      level_of_the_elevator += 1
    end
  end
end
