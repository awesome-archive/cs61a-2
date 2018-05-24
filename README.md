# Stella's CS 61A Projects
This repository contains the projects I did in UC Berkeley's CS61a course, "Structure and Interpretation of Computer Programs" in Spring 2018.

It comes included with the files required for functionality, but also the files the course instructors and professor used to check and grade our work. Maybe in the future I will prune these files so that it only contains the necessary bits. 

The archived CS 61A Spring 2018 website can be found [here!](https://inst.eecs.berkeley.edu/~cs61a/sp18/)

Note: Not all code was written by me. Skeleton code was provided by the professor and instructors. My own code can be found between "BEGIN PORBLEM XX" and "END PROBLEM XX" labels in the code.

## [Ants](https://inst.eecs.berkeley.edu/~cs61a/sp18/proj/ants/)
To run ants, run `python3 ants.gui` or open the html file.

A game of Ants Vs. SomeBees consists of a series of turns. In each turn, new bees may enter the ant colony. Then, new ants are placed. Finally, all insects (ants, then bees) take individual actions. Bees either try to move toward the end of the tunnel or they sting ants in their way. Ants perform a different action depending on their type, such as throwing leaves at the bees. The game ends either when a bee reaches the ant queen (you lose), or the entire bee flotilla has been vanquished (you win).

Core concepts
- The Colony. This is where the game takes place. The colony consists of several places that are chained together to form a tunnel where bees can travel through. The colony has some quantity of food that can be expended to deploy ant troops.
- Places. A place links to another place to form a tunnel. The player can place a single ant into each place. However, there can be many bees in a single place.
- The Hive. This is the place where bees originate. Bees exit the hive to enter the ant colony.
- Ants. Ants are the usable troops in the game that the player places into the colony. Each type of ant takes a different action and requires a different amount of food to place. The two most basic ant types are the HarvesterAnt, which adds one food to the colony during each turn, and the ThrowerAnt, which throws a leaf at a bee each turn. You will be implementing many more.
- Bees. Bees are the antogonistic troops in the game that the player must defend the colony from. Each turn, a bee either advances to the next place in the tunnel if no ant is in its way, or it stings the ant in its way. Bees win when at least one bee reaches the end of a tunnel.
- Queen Ant: There is one queen ant in the whole colony. She is able to attack bees but she also has a special ability of fortifying the other ant troops. Bees can also win if they destroy the queen ant.

Types of characters:
- Harvester ant: Cost 2, Armor 1
- Thrower ant: Cost 3, Armor 1
- Short thrower: Cost 2, Armor 1
- Long thrower: Cost 2, Armor 1
- Fire ant: Cost 5, Armor 1
- Hungry ant: Cost 4, Armor 1
- Ninja ant: Cost 5, Armor 1
- Wall ant: Cost 4, Armor 4
- Bodyguard ant: Cost 4, Armor 2
- Tank ant: Cost 6, Armor 2
- Scuba thrower: Cost 6, Armor 1
- Queen ant: Cost 7, Armor 1
- Slow thrower: Cost 4, Armor 1
- Stun thrower: Cost 6, Armor 1

## [Hog](https://inst.eecs.berkeley.edu/~cs61a/sp18/proj/hog/)
To run hog, run `python3 hog_gui.py`. 

In Hog, two players alternate turns trying to be the first to end a turn with at least 100 total points. On each turn, the current player chooses some number of dice to roll, up to 10. That player's score for the turn is the sum of the dice outcomes.

To spice up the game, we will play with some special rules:
- Pig Out. If any of the dice outcomes is a 1, the current player's score for the turn is 1.
- Free Bacon. A player who chooses to roll zero dice scores 2 more than the absolute difference between the digits in the opponent's total score.

## [Maps](https://inst.eecs.berkeley.edu/~cs61a/sp18/proj/maps/)
To run maps, run `python3 recommend.py`. Use `-r name` to use your personal profile rather than the default (add new profiles in the users file. Using `-q` filters by category of restaurant and `-k` changes the number of clusters. You can get a list of restaurants with `python3 recommend.py -r`. 

In this project, you will create a visualization of restaurant ratings using machine learning and the Yelp academic dataset. In this visualization, Berkeley is segmented into regions, where each region is shaded by the predicted rating of the closest restaurant (yellow is 5 stars, blue is 1 star). Specifically, the visualization you will be constructing is a Voronoi diagram.

Each dot represents a restaurant. The color of the dot is determined by the restaurant's location. For example, downtown restaurants are colored green. The user that generated this map has a strong preference for Southside restaurants, and so the southern regions are colored yellow.

## [Scheme](https://inst.eecs.berkeley.edu/~cs61a/sp18/proj/scheme/)
This version of the scheme interpreter runs in the terminal. It was written in python. Run `python3 scheme.py` to run the scheme interpreter in terminal.

## [Scheme Art Contest](https://inst.eecs.berkeley.edu/~cs61a/sp18/proj/scheme_contest/)
My entry for the Spring 2018 scheme art contest. I created a 2D image using turtle graphics and the scheme interpreter that we built in this class as part of a previous project (see above). Here is the final version!

![Scheme Art](https://raw.githubusercontent.com/stella-lu/cs61a/master/scheme_contest/scheme_art.png)
