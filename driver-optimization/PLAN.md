### Defining the Overall Problem at Hand
The goal of this project is to use the jsprit-core library and Google Maps for solving the Vehicle Scheduling Problem in the specific context of PWILD's driver program. Optimizing the driver schedules of PWILD would not only reduce time in planninng but also provide a great resource for the future of PWILD. Here is a brief overview of the current PWILD system in the context of drop-offs and pick-ups:
1. Every vehicle driven needs two "drivers" with one being the primary driver and other being the passenger/secodary driver.
The role of the secondary driver is to remove all distractions from the primary driver (i.e. directions, music control, temperature, phone calls) to ensure the safety of the vehicle.
2. Pickups and dropoffs happen in a series of rounds where trucks return to the same spot to either pick up more people (dropoffs) or drop people off and start to a new route (pickups)
3. In drop-offs and pick-ups, whole crews need to move togehter, often meaning that multiple trucks will have to caravan to the destination together 
4. In dropoffs, we leave vehicles at different points for later use meaning that this is a possible optimization.
5. Priority is a large part of dropoff/pickup schedules as some routes need to start earlier than others
6. An added issue to this problem will be the number of people that stay with the rest of the people. We always want a director to stay present in case of emergency. 
7. There are many heuristics / optimizations we as an organization have used in the past that need to be implemeted. Examples:
  1. If a truck needs to be dropped off a certain point, can use that in a caravan, then leave that one truck and come back. This eliminates the need for another trip

### Modeling the parts of the problem
1. Driver
* Drivers will be the subset of staffers who are certified and able to drive
* Things to consider before assiging as drivers on pickup/dropoff days
  * Last time driven (Break since last drive)
  * Crew number: For PWILD specifically, would not want to leave crew alone without crew leader during dropoffs/pickups
  * Making sure that we don't send drivers out on trips that would prevent the crew from leaving
2. Crews
* Need the following characteristics
  * Either drop-off or pickup point
  * Total size (with staffers included
  * Relative priority
  * List of staffers (denoted with if staffers can drive)
3. Vehicle
* Need the following characteristics on top of the base Vehicle class
  * MPG (could be relative scale). Basically denoting if the truck is a super duty or not 
     * Would want to take more fuel efficient trucks if we have the choice to
  * Capacity
  * Off road ability (boolean) In years past we have gotten mini-vans ocassionally and would try to avoid those on some of the rockier roads if possible 
  * Drop off location (if there is one). Note this is only needed for drop-offs. Need to decide how to optimize using those vehicles
* Create a caravan holder for trucks to schedule crews traveling together
4. Jobs
* For dropoffs:
  * Jobs would fall under two categories
    1. Round trips: two drivers drive a vehicle to a dropoff point and then return to the central point (round trip)
    2. Truck dropoffs: As trucks have to be scattered around for the purpose of safety on PWILD, some trucks need to be dropped off
* For pickups
  * Jobs would fall under two categories
    1. Assisted dropoffs: Send a truck to the pickup location and use that truck and a truck that is already at that pickup point to drive back to the dropoff point.
    2. Regular dropoffs: The requisite number of trucks is sent out and they return with the crew 
* Will lump the different parts of a job into a larger dropoff or pickup unit which will do calculations for number of drivers, etc. 
5. Costs
* Our main focus is minimizing time so easy to model. Going to use Google Maps API to calculate driving times and then roud up to the nearest 5 or 15 to make the schedule cleaner and provide some cushion
* Will put in buffer time for crews to load up / dropoff in
  
### Implementation plan
##### Using jsprit library
The goal is to largely just build off the jsprit library meaning will extend the pre-existing objects. Then there will be a main that will read in resources and actually get the result out.
##### Reading in resources
* A component that takes in csv file(s) and sets up the model so that this will be usable by non-coders in the future.
* Resource file with popular locations for our problem and their coordinates (to use in the problem) so it will be easy to read them in and add/remove. 

