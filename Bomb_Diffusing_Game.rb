def prompt()
	print "> "
end

#Wire_Cutting function to start game. This will handle changing the $detonate value, removing color choicesa on the bomb. 
#Will end when one of the three conditions in the while is not true

def wire_cutting()
#$detonate variable for game. If it reaches 100, bomb goes off, game over. If it reaches 0, success.
$detonate = 50

#Wires array will carry all colors of wires for the bomb. The trick will be to remove colors that are selected.
wires = ['red', 'blue', 'black', 'grey', 'white', 'green', 'striped', 'brown']

#While loop for game, needs three true values to run
while $detonate > 0 and $detonate < 100 and wires.size > 0
puts "Choose a color wire to cut. The colors remaining are: \n #{wires}"

prompt; wire_to_cut = gets.chomp

#Series of condtional statements to revise the value of $detonate.
#red
if wire_to_cut == "red"
$detonate = $detonate + 35
wires.delete("red")

#blue
elsif wire_to_cut == "blue"
$detonate = $detonate - 40
wires.delete("blue")

#black
elsif wire_to_cut == "black"
$detonate = $detonate * 2
wires.delete("black")

#grey
elsif wire_to_cut == "grey"
$detonate = $detonate / 4
wires.delete("grey")

#white
elsif wire_to_cut == "white"
$detonate = $detonate + 35
wires.delete("white")

#green
elsif wire_to_cut == "green"
$detonate = $detonate - 10
wires.delete("green")

#striped
elsif wire_to_cut == "striped"
$detonate = $detonate + 100
wires.delete("striped")

#brown
elsif wire_to_cut == "brown"
$detonate = $detonate / 8
wires.delete("brown")
else
puts" Not a color"
end

if $detonate > 50
puts "Danger, gettign closer to explosion \n"
elsif $detonate < 50
puts "Good, closer to diffusing this \n"
end
end
#Need to find out how I can pass this variable out of the function.
$wires_left = wires.size
return $wires_left
return $detonate

end

#ending function, while show a game over or a victory
def wires_cut(bomb, wired)
if bomb <= 0 or wired == 0
puts "You win, the bomb is diffused"
elsif bomb > 100 
puts "BOOM!!!!" 
end
end

puts"You encounter a bomb, it has a bunch of wires, we need to diffuse it"

wire_cutting()
wires_cut($detonate, $wires_left)