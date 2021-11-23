# Boris-Bikes-Ruby

This is my solo run through of the [Boris Bikes' Challenge](https://github.com/makersacademy/course/blob/master/boris_bikes/0_challenge_map.md) which we covered in week 1 of the Makers' Academy. 

I have aimed to solve this challenge in a test driven manner with automated feature and unit tests using RSpec.

## Installation Instructions

Clone the repository from github then change directory into it.

```
$ git clone git@github.com:craigea92/Boris-Bikes-Ruby.git
$ cd Boris-Bikes-Ruby
```

Load dependencies with bundle.

```
$ gem install bundle
$ bundle
$ rspec
```

## Learning Objectives

* Set up a simple project
* Explain why a complete README is important
* Initialise and push a git project
* Give the structure of a User Story
* Extract a Domain Model from User Stories
* Define 'Feature Test'
* Define a 'stack trace'
* Use `irb` to run a 'feature test'
* Explain how to use a stack trace to debug errors
* Debug an error using a stack trace
* Define RSpec as a testing framework
* Create a spec file
* Describe an Object using a specification
* Set up a Unit Test
* Pass a unit test
* Use `require`
* Move between Feature and Unit Tests
* Write an RSpec test using `it`
* Test that an Object responds to a Message
* Use Objects within other Objets
* Use RSpec 'predicate' syntax
* Pass a feature test
* Write RSpec tests that require arguments
* Pass an instance as an argument
* Set an attribute on an instantiated Object using an `@` instance variable
* Use `attr_reader` to read an attribute on an instantiated Object


## User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
```

