# Simple Event Management Application

## Demo
[Link To Demo](https://tix-challenge.herokuapp.com/)

Login Details For Test User

**Email**: user@test.com

**Password**: user123

## Schema Description
![Diagram Of Schema](https://github.com/the-fanan/ruby-events-app/blob/main/schema.png?raw=true)

Three tables are used for this project: users, events, and tickets.

**Users** has a one-to-many relationship with **Events**.

**Events** has a one-to-many relationship with **Tickets**.

This is because, a user can create many events. 

Although at the moment, I restrict an event to one ticket, in the future, I can easily extend an event to have multiple tickets (an event can have both free and paid tickets or even different tiers of paid tickets like regular, VIP etc.). Hence, **Events** has a one-to-many relationship with **Tickets**

The ticket only needs an *event_id* field to link it to an event and hence to the *user* that created the event. The user can get the tickets they created through the events table. This way, I remove redundant data from my database structure.

You will notice an *is_active* column on the **Events** table, this is to allow users to disable their events when they do not want it to be accessible to the public.

## Testing
Tests are written with RSpec and can be found in the spec folder. 
To run tests, edit the database setup for testing in `config/database.yml`. Then run `rspec` from the root directory of this project.


