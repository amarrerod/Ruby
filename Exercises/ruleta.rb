
=begin

    Over lunch, Bill has a quiz for you. “My previous team followed a cruel
    office ritual,” he says. “Every morning, each team member picked a
    random number. Whoever got the smallest number had to take a trip
    to the nearby Starbucks and buy coffee for the whole team.”
    Bill explains that the team even wrote a class that was supposed to 
    provide a random number (and some Wheel of Fortune–style suspense)
    when you calledthe name of a team member

=end

class Roulette
    def game(name,*args)
        person = "#{name.capitalize}"
        number = 0
        3.times do
            number = rand(10) + 1
            puts"#{number}..."
        end
        "#{person} finally got a #{number}"
    end
end

numberOf = Roulette.new
puts(numberOf.game("bob"))
puts(numberOf.game("frank"))