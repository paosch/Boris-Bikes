# Boris Bikes 
[![Build Status](https://travis-ci.com/paosch/Boris-Bikes.svg?branch=master)](https://travis-ci.com/paosch/Boris-Bikes)

This is a program that emulates the Boris Bikes scheme in London.

Version 1 was written in February 2018 during week 1 of the Makers Academy course. 

Version 2 was written in May 2018 to improve the code (refactoring, single responsibility principle, test doubles, guard conditions) and to practise git flow (branching, pull requests, merging). 
<br></br>
The following information applies to the second version:


## User stories
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working.

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station.

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked.

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

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

```


## The process

- from user stories to domain model
- using the domain model to feature-test a feature
- writing a unit test and watching it fail
- implementing code to pass the test
- refactoring


## Testing framework and coverage
RSpec

(![screen shot 2018-05-28 at 11 54 42](https://user-images.githubusercontent.com/33669463/40611370-f6cab5f6-626d-11e8-9c32-5abb0239c6ca.png)


## IRB screenshot

![screen shot 2018-05-28 at 11 51 54](https://user-images.githubusercontent.com/33669463/40611348-dcfc1638-626d-11e8-9aca-a8b16e8f4236.png)


