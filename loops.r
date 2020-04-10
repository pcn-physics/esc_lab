'''
while: continues to execute loop as ling as the condition is true
E.g.
while(condition) {
  expr
  if(condition){
  break #immediately ends the break once condition is met
  }
  
}

while(ctr <=7) {
  print(paste("ctr is set to", ct))
  ctr <- ctr + 1
}

indefine while loop: Condition is always true and ends in indefinite loop
'''

'''
Exercise
Write a while loop
Let's get you started with building a while loop from the ground up. Have another look at its recipe:

while (condition) {
  expr
}
Remember that the condition part of this recipe should become FALSE at some point during the execution. 
Otherwise, the while loop will go on indefinitely.

If your session expires when you run your code, check the body of your while loop carefully.

Have a look at the code on the right; it initializes the speed variables and already provides a while loop template to get you started.

Instructions
100 XP
Code a while loop with the following characteristics:

The condition of the while loop should check if speed is higher than 30.
Inside the body of the while loop, print out "Slow down!".
Inside the body of the while loop, decrease the speed by 7 units and assign this new value to speed again. 
This step is crucial; otherwise your while loop will never stop and your session will expire.
If your session expires when you run your code, check the body of your while loop carefully: it's likely that you made a mistake.
'''

'''
QUESTION:
# Initialize the speed variable
speed <- 64

# Code the while loop
while () {
  ___
  ___ <- ___
}

# Print out the speed variable
speed

SOLNTION:
> # Initialize the speed variable
> speed <- 64
> 
> # Code the while loop
> while (speed > 30) {
    print("Slow down!");
    speed <- speed - 7
  }
[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
[1] "Slow down!"
> 
> # Print out the speed variable
> speed
[1] 29
'''

'''
Exercise
Throw in more conditionals
In the previous exercise, you simulated the interaction between a driver and a driver's assistant: 
When the speed was too high, "Slow down!" got printed out to the console, resulting in a decrease of your speed by 7 units.

There are several ways in which you could make your driver's assistant more advanced. 
For example, the assistant could give you different messages based on your speed or provide you with a current speed at a given moment.

A while loop similar to the one you've coded in the previous exercise is already available in the editor. 
It prints out your current speed, but there's no code that decreases the speed variable yet, which is pretty dangerous. 
Can you make the appropriate changes?

Instructions
100 XP
If the speed is greater than 48, have R print out "Slow down big time!", and decrease the speed by 11.
Otherwise, have R simply print out "Slow down!", and decrease the speed by 6.
If the session keeps timing out and throwing an error, you are probably stuck in an infinite loop!
Check the body of your while loop and make sure you are assigning new values to speed.
'''

'''
QUESTION:
# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if ( ) {
    ___
    ___
  } else {
    ___
    ___
  }
}

SOLN:
> # Initialize the speed variable
> speed <- 64
> 
> # Extend/adapt the while loop
> while (speed > 30) {
    print(paste("Your speed is",speed))
    if (speed > 48) {
      print("Slow down big time!")
      speed <- speed - 11
    } else {
      print("Slow down!")
      speed <- speed - 6
    }
  }
[1] "Your speed is 64"
[1] "Slow down big time!"
[1] "Your speed is 53"
[1] "Slow down big time!"
[1] "Your speed is 42"
[1] "Slow down!"
[1] "Your speed is 36"
[1] "Slow down!"
'''

'''
Exercise
Stop the while loop: break
There are some very rare situations in which severe speeding is necessary: 
what if a hurricane is approaching and you have to get away as quickly as possible? 
You don't want the driver's assistant sending you speeding notifications in that scenario, right?

This seems like a great opportunity to include the break statement in the while loop you've been working on. 
Remember that the break statement is a control statement. When R encounters it, the while loop is abandoned completely.

Instructions
100 XP
Adapt the while loop such that it is abandoned when the speed of the vehicle is greater than 80. 
This time, the speed variable has been initialized to 88; keep it that way.
'''

'''
SOLN
> # Initialize the speed variable
> speed <- 88
> 
> while (speed > 30) {
    print(paste("Your speed is", speed))
    
    # Break the while loop when speed exceeds 80
    if (speed > 80) {
      break
    }
    
    if (speed > 48) {
      print("Slow down big time!")
      speed <- speed - 11
    } else {
      print("Slow down!")
      speed <- speed - 6
    }
  }
[1] "Your speed is 88"
'''

'''
Exercise
Build a while loop from scratch
The previous exercises guided you through developing a pretty advanced while loop, 
containing a break statement and different messages and updates as determined by control flow constructs. 
If you manage to solve this comprehensive exercise using a while loop, you're totally ready for the next topic: the for loop.

Instructions
100 XP
Finish the while loop so that it:

prints out the triple of i, so 3 * i, at each run.
is abandoned with a break if the triple of i is divisible by 8, but still prints out this triple before breaking.
'''

'''
QUESTION:
# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(___)
  if ( ___ ) {
    
  }
  i <- i + 1
}

SOLN:
> # Initialize i as 1
> i <- 1
> 
> # Code the while loop
> while (i <= 10) {
    print(3 * i)
    if ( (3 * i) %% 8 == 0 ) {
    print( 3 * i)
    break
    }
    i <- i + 1
  }
[1] 3
[1] 6
[1] 9
[1] 12
[1] 15
[1] 18
[1] 21
[1] 24
[1] 24
'''

'''
FOR LOOP (over list or vector) # works for additional data structures
# break works the same way as in for while loops
# Concise, easy to read, but no accesss to looping index
for(car in seq) {
  expr
  if(condition){
  next #if condition is met, immediately starts at the for loop again \\
  }
}
 
#Harder to read and write but mroe versatile
FOR LOOP V2
for(i in 1:length(cities)) {
  print(paste(cities)[i]
}
'''

'''
Exercise
Loop over a vector
In the previous video, Filip told you about two different strategies for using the for loop. To refresh your memory, consider the following loops that are equivalent in R:

primes <- c(2, 3, 5, 7, 11, 13)

# loop version 1
for (p in primes) {
  print(p)
}

# loop version 2
for (i in 1:length(primes)) {
  print(primes[i])
}
Remember our linkedin vector? It's a vector that contains the number of views your LinkedIn profile had in the last seven days. The linkedin vector has already been defined in the editor on the right so that you can fully focus on the instructions!

Instructions
100 XP
Write a for loop that iterates over all the elements of linkedin and prints out every element separately. Do this in two ways: using the loop version 1 and the loop version 2 in the example code above.
'''

'''
SOLN:
> # The linkedin vector has already been defined for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> 
> # Loop version 1
> for (i in linkedin){
    print(i)
  }
[1] 16
[1] 9
[1] 13
[1] 5
[1] 2
[1] 17
[1] 14
> 
> # Loop version 2
> for(i in 1:length(linkedin)){
    print(linkedin[i])
  }
[1] 16
[1] 9
[1] 13
[1] 5
[1] 2
[1] 17
[1] 14
'''

'''
Loop over a list
Looping over a list is just as easy and convenient as looping over a vector. There are again two different approaches here:

primes_list <- list(2, 3, 5, 7, 11, 13)

# loop version 1
for (p in primes_list) {
  print(p)
}

# loop version 2
for (i in 1:length(primes_list)) {
  print(primes_list[[i]])
}
Notice that you need double square brackets - [[ ]] - to select the list elements in loop version 2.

Suppose you have a list of all sorts of information on New York City: its population size, the names of the boroughs, 
and whether it is the capital of the United States. We've already prepared a list nyc with all this information in the editor 
(source: Wikipedia).

Instructions
100 XP
As in the previous exercise, loop over the nyc list in two different ways to print its elements:

Loop directly over the nyc list (loop version 1).
Define a looping index and do subsetting using double brackets (loop version 2).
'''

'''
QUESTION:
# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1




# Loop version 2

SOLN:
> # The nyc list is already specified
> nyc <- list(pop = 8405837, 
              boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
              capital = FALSE)
> 
> # Loop version 1
> for(i in nyc){
    print(i)
  }
[1] 8405837
[1] "Manhattan"     "Bronx"         "Brooklyn"      "Queens"       
[5] "Staten Island"
[1] FALSE
> 
> # Loop version 2
> for(i in 1:length(nyc)){
    print(nyc[[i]])
  }
[1] 8405837
[1] "Manhattan"     "Bronx"         "Brooklyn"      "Queens"       
[5] "Staten Island"
[1] FALSE
'''

'''
Exercise
Loop over a matrix
In your workspace, there's a matrix ttt, that represents the status of a tic-tac-toe game. 
It contains the values "X", "O" and "NA". Print out ttt in the console so you can have a closer look. 
On row 1 and column 1, there's "O", while on row 3 and column 2 there's "NA".

To solve this exercise, you'll need a for loop inside a for loop, often called a nested loop.
Doing this in R is a breeze! Simply use the following recipe:

for (var1 in seq1) {
  for (var2 in seq2) {
    expr
  }
}
Instructions
100 XP
Finish the nested for loops to go over the elements in ttt:

The outer loop should loop over the rows, with loop index i (use 1:nrow(ttt)).
The inner loop should loop over the columns, with loop index j (use 1:ncol(ttt)).
Inside the inner loop, make use of print() and paste() to print out information in the following format: 
"On row i and column j the board contains x", where x is the value on that position.
'''
