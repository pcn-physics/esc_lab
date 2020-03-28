# Intro to Basics
# Take your first steps with R. 
# In this chapter, you will learn how to use the console as a calculator and how to assign variables. 
# You will also get to know the basic data types in R. Let's get started.

'''
EX: How it works

In the editor on the right you should type R code to solve the exercises. 
When you hit the 'Submit Answer' button, every line of code is interpreted and executed by R and you get a message 
whether or not your code was correct. The output of your R code is shown in the console in the lower right corner.
R makes use of the # sign to add comments, so that you and others can understand what the R code is about. 
Just like Twitter! Comments are not run as R code, so they will not influence your result. 
For example, Calculate 3 + 4 in the editor on the right is a comment.
You can also execute R commands straight in the console. 
This is a good way to experiment with R code, as your submission is not checked for correctness.

Instructions:

In the editor on the right there is already some sample code. Can you see which lines are actual R code and which are comments?
Add a line of code that calculates the sum of 6 and 12, and hit the 'Submit Answer' button.
'''

'''
> # Calculate 3 + 4
> 3 + 4
[1] 7
> 
> # Calculate 6 + 12
> 
> 6 + 12
[1] 18
> 
'''

'''
EX: Arithmetic with R

In its most basic form, R can be used as a simple calculator. Consider the following arithmetic operators:

Addition: +
Subtraction: -
Multiplication: *
Division: /
Exponentiation: ^
Modulo: %%
The last two might need some explaining:

The ^ operator raises the number to its left to the power of the number to its right: for example 3^2 is 9.
The modulo returns the remainder of the division of the number to the left by the number on its right, 
for example 5 modulo 3 or 5 %% 3 is 2.
With this knowledge, follow the instructions below to complete the exercise.

Instructions: 

Type 2^5 in the editor to calculate 2 to the power 5.
Type 28 %% 6 to calculate 28 modulo 6.
Click 'Submit Answer' and have a look at the R output in the console.
Note how the # symbol is used to add comments on the R code.
'''

'''SOLN:
> # An addition
> 5 + 5
[1] 10
> 
> # A subtraction
> 5 - 5
[1] 0
> 
> # A multiplication
> 3 * 5
[1] 15
> 
>  # A division
> (5 + 5) / 2
[1] 5
> 
> # Exponentiation
> 2^5
[1] 32
> 
> # Modulo
> 28%%6
[1] 4
''']

'''
EX: Variable assignment
A basic concept in (statistical) programming is called a variable.

A variable allows you to store a value (e.g. 4) or an object (e.g. a function description) in R. 
You can then later use this variable\'s name to easily access the value or the object that is stored within this variable.
You can assign a value 4 to a variable my_var with the command
my_var <- 4

Instructions:
Over to you: complete the code in the editor such that it assigns the value 42 to the variable x in the editor. 
Click 'Submit Answer'. Notice that when you ask R to print x, the value 42 appears.
'''

'''SOLN:
> # Assign the value 42 to x
> x <- 42
> 
> # Print out the value of the variable x
> x
[1] 42
> 
# Good job! Have you noticed that R does not print the value of a variable to the console when you did the assignment? 
x <- 42 did not generate any output, because R assumes that you will be needing this variable in the future. 
Otherwise you wouldn\'t have stored the value in a variable in the first place, right? Proceed to the next exercise!
'''

'''
EX: Variable assignment (2)

Suppose you have a fruit basket with five apples. 
As a data analyst in training, you want to store the number of apples in a variable with the name my_apples.

Instructions: 
Type the following code in the editor: my_apples <- 5. This will assign the value 5 to my_apples.
Type: my_apples below the second comment. This will print out the value of my_apples.
Click 'Submit Answer', and look at the console: you see that the number 5 is printed. So R now links the variable my_apples to the value 5.
'''

'''SOLN:
> # Assign the value 5 to the variable my_apples
> my_apples <- 5
> 
> # Print out the value of the variable my_apples
> my_apples
[1] 5
> 
'''

'''
EX: Variable assignment (3)
Every tasty fruit basket needs oranges, so you decide to add six oranges. 
As a data analyst, your reflex is to immediately create the variable my_oranges and assign the value 6 to it. 
Next, you want to calculate how many pieces of fruit you have in total. 
Since you have given meaningful names to these values, you can now code this in a clear way:

my_apples + my_oranges

Instructions: 
Assign to my_oranges the value 6.
Add the variables my_apples and my_oranges and have R simply print the result.
Assign the result of adding my_apples and my_oranges to a new variable my_fruit.
'''

'''SOLN:
> # Assign a value to the variables my_apples and my_oranges
> my_apples <- 5
> my_oranges <- 6
> 
> # Add these two variables together
> my_apples + my_oranges
[1] 11
> 
> # Create the variable my_fruit
> my_fruit <- (my_apples + my_oranges)
> 
# Nice one! The great advantage of doing calculations with variables is reusability. 
If you just change my_apples to equal 12 instead of 5 and rerun the script, 
my_fruit will automatically update as well. Continue to the next exercise.
'''

'''
EX: Apples and oranges
Common knowledge tells you not to add apples and oranges. 
But hey, that is what you just did, no :-)? The my_apples and my_oranges variables both contained a number in the previous exercise. 
The + operator works with numeric variables in R. If you really tried to add "apples" and "oranges", 
and assigned a text value to the variable my_oranges (see the editor), 
you would be trying to assign the addition of a numeric and a character variable to the variable my_fruit. This is not possible.

Instructions
Click 'Submit Answer' and read the error message. Make sure to understand why this did not work.
Adjust the code so that R knows you have 6 oranges and thus a fruit basket with 11 pieces of fruit.
'''

'''ERROR:
> # Assign a value to the variable my_apples
> my_apples <- 5
> 
> # Fix the assignment of my_oranges
> my_oranges <- "six"
> 
> # Create the variable my_fruit and print it out
> my_fruit <- my_apples + my_oranges
Error: non-numeric argument to binary operator
> my_fruit
Error: object 'my_fruit' not found
> 
'''

'''SOLN:
> # Assign a value to the variable my_apples
> my_apples <- 5
> 
> # Fix the assignment of my_oranges
> my_oranges <- 6
> 
> # Create the variable my_fruit and print it out
> my_fruit <- my_apples + my_oranges
> my_fruit
[1] 11
> 
'''

'''
EX: Basic data types in R
R works with numerous data types. Some of the most basic types to get started are:

Decimal values like 4.5 are called numerics.
Natural numbers like 4 are called integers. Integers are also numerics.
Boolean values (TRUE or FALSE) are called logical.
Text (or string) values are called characters.
Note how the quotation marks on the right indicate that "some text" is a character.

Instructions
100 XP
Change the value of the:

my_numeric variable to 42.
my_character variable to "universe". Note that the quotation marks indicate that "universe" is a character.
my_logical variable to FALSE.
Note that R is case sensitive!
'''

'''SOLN:
> # Change my_numeric to be 42
> my_numeric <- 42
> 
> # Change my_character to be "universe"
> my_character <- "universe"
> 
> # Change my_logical to be FALSE
> my_logical <- FALSE
'''

'''
EX:What\'s that data type?
Do you remember that when you added 5 + "six", you got an error due to a mismatch in data types? 
You can avoid such embarrassing situations by checking the data type of a variable beforehand. 
You can do this with the class() function, as the code on the right shows.

Instructions
100 XP
Complete the code in the editor and also print out the classes of my_character and my_logical. 
'''

'''SOLN:
> # Declare variables of different types
> my_numeric <- 42
> my_character <- "universe"
> my_logical <- FALSE
> 
> # Check class of my_numeric
> class(my_numeric)
[1] "numeric"
> 
> # Check class of my_character
> class(my_character)
[1] "character"
> 
> # Check class of my_logical
> class(my_logical)
[1] "logical"
> 
'''

'''
Exercise
Create a vector
Feeling lucky? You better, because this chapter takes you on a trip to the City of Sins, also known as Statisticians Paradise!

Thanks to R and your new data-analytical skills, you will learn how to uplift your performance at the tables and 
fire off your career as a professional gambler. This chapter will show how you can easily keep track of your betting progress 
and how you can do some simple analyses on past actions. Next stop, Vegas Baby... VEGAS!!

Instructions
100 XP
Do you still remember what you have learned in the first chapter? Assign the value "Go!" to the variable vegas. 
Remember: R is case sensitive!
'''

'''SOLN:
> # Define the variable vegas
> vegas <- "Go!"
'''

'''Exercise
Create a vector (2)
Let us focus first!

On your way from rags to riches, you will make extensive use of vectors. 
Vectors are one-dimension arrays that can hold numeric data, character data, or logical data. 
In other words, a vector is a simple tool to store data. For example, you can store your daily gains and losses in the casinos.

In R, you create a vector with the combine function c(). 
You place the vector elements separated by a comma between the parentheses. For example:

numeric_vector <- c(1, 2, 3)
character_vector <- c("a", "b", "c")
Once you have created these vectors in R, you can use them to do calculations.

Instructions
100 XP
Complete the code such that boolean_vector contains the three elements: TRUE, FALSE and TRUE (in that order).
'''

'''SOLN:
> numeric_vector <- c(1, 10, 49)
> character_vector <- c("a", "b", "c")
> 
> # Complete the code for boolean_vector
> boolean_vector <-c(TRUE, FALSE, TRUE)

#Perfect! Notice that adding a space behind the commas in the c() function improves the readability of your code. 
Let\'s practice some more with vector creation in the next exercise.
'''

'''
Exercise
Create a vector (3)
After one week in Las Vegas and still zero Ferraris in your garage, 
you decide that it is time to start using your data analytical superpowers.

Before doing a first analysis, you decide to first collect all the winnings and losses for the last week:

For poker_vector:

On Monday you won $140
Tuesday you lost $50
Wednesday you won $20
Thursday you lost $120
Friday you won $240
For roulette_vector:

On Monday you lost $24
Tuesday you lost $50
Wednesday you won $100
Thursday you lost $350
Friday you won $10
You only played poker and roulette, since there was a delegation of mediums that occupied the craps tables. 
To be able to use this data in R, you decide to create the variables poker_vector and roulette_vector.

Instructions
100 XP
Assign the winnings/losses for roulette to the variable roulette_vector.
'''

'''SOLN:
> # Poker winnings from Monday to Friday
> poker_vector <- c(140, -50, 20, -120, 240)
> 
> # Roulette winnings from Monday to Friday
> roulette_vector <-  c(-24, -50, 100, -350, 10)

#Very good! To check out the contents of your vectors, 
remember that you can always simply type the variable in the console and hit Enter. Proceed to the next exercise!
'''

'''
Exercise
Naming a vector
As a data analyst, it is important to have a clear view on the data that you are using. 
Understanding what each element refers to is therefore essential.

In the previous exercise, we created a vector with your winnings over the week. 
Each vector element refers to a day of the week but it is hard to tell which element belongs to which day. 
It would be nice if you could show that in the vector itself.

You can give a name to the elements of a vector with the names() function. Have a look at this example:

some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")
This code first creates a vector some_vector and then gives the two elements a name. 
The first element is assigned the name Name, while the second element is labeled Profession. 
Printing the contents to the console yields following output:

          Name     Profession 
    "John Doe" "poker player" 
Instructions
100 XP
The code on the right names the elements in poker_vector with the days of the week. Add code to do the same thing for roulette_vector.
'''

'''SOLN:
> # Poker winnings from Monday to Friday
> poker_vector <- c(140, -50, 20, -120, 240)
> 
> # Roulette winnings from Monday to Friday
> roulette_vector <- c(-24, -50, 100, -350, 10)
> 
> # Assign days as names of poker_vector
> names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> 
> # Assign days as names of roulette_vector
> names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
'''

'''
Exercise
Naming a vector (2)
If you want to become a good statistician, you have to become lazy. 
(If you are already lazy, chances are high you are one of those exceptional, natural-born statistical talents.)

In the previous exercises you probably experienced that it is boring and frustrating to type and retype information 
such as the days of the week. However, when you look at it from a higher perspective, there is a more efficient way to do this, 
namely, to assign the days of the week vector to a variable!

Just like you did with your poker and roulette returns, you can also create a variable that contains the days of the week. 
This way you can use and re-use it.

Instructions
100 XP
A variable days_vector that contains the days of the week has already been created for you.
Use days_vector to set the names of poker_vector and roulette_vector.
'''

'''SOLN:
> # Poker winnings from Monday to Friday
> poker_vector <- c(140, -50, 20, -120, 240)
> 
> # Roulette winnings from Monday to Friday
> roulette_vector <- c(-24, -50, 100, -350, 10)
> 
> # The variable days_vector
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> 
> # Assign the names of the day to roulette_vector and poker_vector
> names(poker_vector) <-   days_vector
> names(roulette_vector) <- days_vector

# Nice one! A word of advice: try to avoid code duplication at all times. 
Continue to the next exercise and learn how to do arithmetic with vectors!
'''

'''
Exercise
Calculating total winnings
Now that you have the poker and roulette winnings nicely as named vectors, you can start doing some data analytical magic.

You want to find out the following type of information:

How much has been your overall profit or loss per day of the week?
Have you lost money over the week in total?
Are you winning/losing money on poker or on roulette?
To get the answers, you have to do arithmetic calculations on vectors.

It is important to know that if you sum two vectors in R, it takes the element-wise sum. 
For example, the following three statements are completely equivalent:

c(1, 2, 3) + c(4, 5, 6)
c(1 + 4, 2 + 5, 3 + 6)
c(5, 7, 9)
You can also do the calculations with variables that represent vectors:

a <- c(1, 2, 3) 
b <- c(4, 5, 6)
c <- a + b
Instructions
100 XP
Take the sum of the variables A_vector and B_vector and assign it to total_vector.
Inspect the result by printing out total_vector.
'''

'''SOLN:
> A_vector <- c(1, 2, 3)
> B_vector <- c(4, 5, 6)
> 
> # Take the sum of A_vector and B_vector
> total_vector <- A_vector + B_vector
> 
> # Print out total_vector
> total_vector
[1] 5 7 9
'''

'''
Exercise
Calculating total winnings (2)
Now you understand how R does arithmetic with vectors, it is time to get those Ferraris in your garage! 
First, you need to understand what the overall profit or loss per day of the week was. 
The total daily profit is the sum of the profit/loss you realized on poker per day, 
and the profit/loss you realized on roulette per day.

In R, this is just the sum of roulette_vector and poker_vector.

Instructions
100 XP
Assign to the variable total_daily how much you won or lost on each day in total (poker and roulette combined).
'''

'''SOLN:
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Assign to total_daily how much you won/lost on each day
> total_daily <- poker_vector + roulette_vector
'''

'''
Exercise
Calculating total winnings (3)
Based on the previous analysis, it looks like you had a mix of good and bad days. 
This is not what your ego expected, and you wonder if there may be a very tiny chance you have lost money over the week in total?

A function that helps you to answer this question is sum(). It calculates the sum of all elements of a vector. 
For example, to calculate the total amount of money you have lost/won with poker you do:

total_poker <- sum(poker_vector)
Instructions
100 XP
Calculate the total amount of money that you have won/lost with roulette and assign to the variable total_roulette.
Now that you have the totals for roulette and poker, you can easily calculate total_week (which is the sum of all gains and losses of the week).
Print out total_week.
'''

'''SOLN:
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Total winnings with poker
> total_poker <- sum(poker_vector)
> 
> # Total winnings with roulette
> total_roulette <-  sum(roulette_vector)
> 
> # Total winnings overall
> total_week <- total_poker + total_roulette
> 
> # Print out total_week
> total_week
[1] -84
'''

'''
Exercise
Comparing total winnings
Oops, it seems like you are losing money. Time to rethink and adapt your strategy! This will require some deeper analysis...

After a short brainstorm in your hotel\'s jacuzzi, 
you realize that a possible explanation might be that your skills in roulette are not as well developed as your skills in poker. 
So maybe your total gains in poker are higher (or > ) than in roulette.

Instructions
100 XP
Calculate total_poker and total_roulette as in the previous exercise. Use the sum() function twice.
Check if your total gains in poker are higher than for roulette by using a comparison. 
Simply print out the result of this comparison. What do you conclude, should you focus on roulette or on poker?
'''

'''SOLN:
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Calculate total gains for poker and roulette
> total_poker <- sum(poker_vector)
> total_roulette <- sum(roulette_vector)
> 
> # Check if you realized higher total gains in poker than in roulette
> total_poker > total_roulette
[1] TRUE
'''

'''
Exercise
Vector selection: the good times
Your hunch seemed to be right. It appears that the poker game is more your cup of tea than roulette.

Another possible route for investigation is your performance at the beginning of the working week compared to the end of it. 
You did have a couple of Margarita cocktails at the end of the week...

To answer that question, you only want to focus on a selection of the total_vector. 
In other words, our goal is to select specific elements of the vector. 
To select elements of a vector (and later matrices, data frames, ...), you can use square brackets. 
Between the square brackets, you indicate what elements to select. For example, to select the first element of the vector, 
you type poker_vector[1]. To select the second element of the vector, you type poker_vector[2], etc. 
Notice that the first element in a vector has index 1, not 0 as in many other programming languages.

Instructions
100 XP
Assign the poker results of Wednesday to the variable poker_wednesday.
'''

'''SOLN:
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Define a new variable based on a selection
> poker_wednesday <- poker_vector[3]
'''

'''
Exercise
Vector selection: the good times (2)
How about analyzing your midweek results?

To select multiple elements from a vector, you can add square brackets at the end of it. 
You can indicate between the brackets what elements should be selected. 
For example: suppose you want to select the first and the fifth day of the week: use the vector c(1, 5) 
between the square brackets. For example, the code below selects the first and fifth element of poker_vector:

poker_vector[c(1, 5)]
Instructions
100 XP
Assign the poker results of Tuesday, Wednesday and Thursday to the variable poker_midweek.
'''

'''SOLN:
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Define a new variable based on a selection
> poker_midweek <- poker_vector[c(1,3,5)]
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Define a new variable based on a selection
> poker_midweek <- poker_vector[c(2,3,4)]
'''

'''
Exercise
Vector selection: the good times (3)
Selecting multiple elements of poker_vector with c(2, 3, 4) is not very convenient. 
Many statisticians are lazy people by nature, so they created an easier way to do this: c(2, 3, 4) can be abbreviated to2:4, 
which generates a vector with all natural numbers from 2 up to 4.

So, another way to find the mid-week results is poker_vector[2:4]. 
Notice how the vector 2:4 is placed between the square brackets to select element 2 up to 4.

Instructions
100 XP
Assign to roulette_selection_vector the roulette results from Tuesday up to Friday; 
make use of : if it makes things easier for you.
'''

'''SOLN
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Define a new variable based on a selection
> roulette_selection_vector <- roulette_vector[2:5]
'''

'''
Exercise
Vector selection: the good times (4)
Another way to tackle the previous exercise is by using the names of the vector elements (Monday, Tuesday, ...) 
instead of their numeric positions. For example,

poker_vector["Monday"]
will select the first element of poker_vector since "Monday" is the name of that first element.

Just like you did in the previous exercise with numerics, you can also use the element names to select multiple elements, for example:

poker_vector[c("Monday","Tuesday")]
Instructions
100 XP
Select the first three elements in poker_vector by using their names: "Monday", "Tuesday" and "Wednesday". 
Assign the result of the selection to poker_start.
Calculate the average of the values in poker_start with the mean() function. Simply print out the result so you can inspect it.
'''

'''SOLN:
> # Select poker results for Monday, Tuesday and Wednesday
> poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]
> 
> # Calculate the average of the elements in poker_start
> mean(poker_start)
[1] 36.66667
'''

'''
Exercise
Selection by comparison - Step 1
By making use of comparison operators, we can approach the previous question in a more proactive way.

The (logical) comparison operators known to R are:

< for less than
> for greater than
<= for less than or equal to
>= for greater than or equal to
== for equal to each other
!= not equal to each other
As seen in the previous chapter, stating 6 > 5 returns TRUE. 
The nice thing about R is that you can use these comparison operators also on vectors. For example:

> c(4, 5, 6) > 5
[1] FALSE FALSE TRUE
This command tests for every element of the vector if the condition stated by the comparison operator is TRUE or FALSE.

Instructions
100 XP
Check which elements in poker_vector are positive (i.e. > 0) and assign this to selection_vector.
Print out selection_vector so you can inspect it. 
The printout tells you whether you won (TRUE) or lost (FALSE) any money for each day.
'''

'''SOLN:
> # Which days did you make money on poker?
> selection_vector <- (poker_vector > 0)
> 
> # Print out selection_vector
> selection_vector
   Monday   Tuesday Wednesday  Thursday    Friday 
     TRUE     FALSE      TRUE     FALSE      TRUE
'''

'''
Exercise
Selection by comparison - Step 2
Working with comparisons will make your data analytical life easier. 
Instead of selecting a subset of days to investigate yourself (like before), 
you can simply ask R to return only those days where you realized a positive return for poker.

In the previous exercises you used selection_vector <- poker_vector > 0 to find the days on which you had a positive poker return. 
Now, you would like to know not only the days on which you won, but also how much you won on those days.

You can select the desired elements, by putting selection_vector between the square brackets that follow poker_vector:

poker_vector[selection_vector]
R knows what to do when you pass a logical vector in square brackets: it will only select the elements that correspond to TRUE in selection_vector.

Instructions
100 XP
Use selection_vector in square brackets to assign the amounts that you won on the profitable days to the variable poker_winning_days.
'''

'''SOLN:
> # Which days did you make money on poker?
> selection_vector <- poker_vector > 0
> 
> # Select from poker_vector these days
> poker_winning_days <- poker_vector[selection_vector]
'''

'''
Exercise
Advanced selection
Just like you did for poker, you also want to know those days where you realized a positive return for roulette.

Instructions
100 XP
Create the variable selection_vector, this time to see if you made profit with roulette for different days.
Assign the amounts that you made on the days that you ended positively for roulette to the variable roulette_winning_days. 
This vector thus contains the positive winnings of roulette_vector.
'''

'''SOLN:
# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
'''

'''
Exercise
What\'s a matrix?
In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) 
arranged into a fixed number of rows and columns. Since you are only working with rows and columns, a matrix is called two-dimensional.

You can construct a matrix in R with the matrix() function. Consider the following example:

matrix(1:9, byrow = TRUE, nrow = 3)
In the matrix() function:

The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. 
Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, 
we just place byrow = FALSE.
The third argument nrow indicates that the matrix should have three rows.
Instructions
100 XP
Construct a matrix with 3 rows containing the numbers 1 up to 9, filled row-wise.
'''

'''SOLN
> # Construct a matrix with 3 rows that contain the numbers 1 up to 9
> matrix(1:9, byrow = TRUE, nrow = 3)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
'''

'''
Exercise
Analyze matrices, you shall
It is now time to get your hands dirty. In the following exercises you will analyze the box office numbers of the Star Wars franchise. 
May the force be with you!

In the editor, three vectors are defined. Each one represents the box office numbers from the first three Star Wars movies. 
The first element of each vector indicates the US box office revenue, 
the second element refers to the Non-US box office (source: Wikipedia).

In this exercise, you\'ll combine all these figures into a single vector. Next, you\'ll build a matrix from this vector.

Instructions
100 XP
Use c(new_hope, empire_strikes, return_jedi) to combine the three vectors into one vector. Call this vector box_office.
Construct a matrix with 3 rows, where each row represents a movie. Use the matrix() function to do this. The first argument is the vector box_office, containing all box office figures. 
Next, you\'ll have to specify nrow = 3 and byrow = TRUE. Name the resulting matrix star_wars_matrix.
'''

'''SOLN:
> # Box office Star Wars (in millions!)
> new_hope <- c(460.998, 314.4)
> empire_strikes <- c(290.475, 247.900)
> return_jedi <- c(309.306, 165.8)
> 
> # Create box_office
> box_office <- c(new_hope, empire_strikes, return_jedi)
> 
> # Construct star_wars_matrix
> star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)
'''

'''
Exercise
Naming a matrix
To help you remember what is stored in star_wars_matrix, you would like to add the names of the movies for the rows. Not only does this help you to read the data, but it is also useful to select certain elements from the matrix.

Similar to vectors, you can add names for the rows and the columns of a matrix

rownames(my_matrix) <- row_names_vector
colnames(my_matrix) <- col_names_vector
We went ahead and prepared two vectors for you: region, and titles. You will need these vectors to name the columns and rows of star_wars_matrix, respectively.

Instructions
100 XP
Use colnames() to name the columns of star_wars_matrix with the region vector.
Use rownames() to name the rows of star_wars_matrix with the titles vector.
Print out star_wars_matrix to see the result of your work.
'''

'''SOLN:
> # Vectors region and titles, used for naming
> region <- c("US", "non-US")
> titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
> 
> # Name the columns with region
> colnames(star_wars_matrix) <- region
> 
> # Name the rows with titles
> rownames(star_wars_matrix) <- titles
> 
> # Print out star_wars_matrix
> star_wars_matrix
                             US non-US
A New Hope              460.998  314.4
The Empire Strikes Back 290.475  247.9
Return of the Jedi      309.306  165.8
'''
