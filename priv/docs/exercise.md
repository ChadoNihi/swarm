# WebEngineering Module, Graded Exercise

## Commit Proposal

Matrikel Number: Alexandr Shchelov (an exchange student, no student # that I'm aware of)

Project idea short description:

Swarm: a web app that treats the network of its users as a single sentient entity (where, for example, sufferings of "others" would be recognized as a universal (urgent!) concern).
The app would allow users to exercise a universalist (negative-)utilitarian ethic, a moral "[view from nothere](https://en.wikipedia.org/wiki/The_View_From_Nowhere)".

In terms of _initial_ *functionality* it would notify users of crises ("pain points") of others (from individual tragedies to famines), provide means of proposing and voting for solutions, debating ('resolving cognitive dissonances') and discussions ('thoughts'); and facilitate sharing of resources. (I have no idea what functionality I will be able to implement by the dead-line: I haven't touched elm for more than a year, have not used Phoenix (although I'm proficient in Elixir), etc.)

Ultimately, Swarm would cultivate a culture where suffering of others is disvalued as one's own.
Swarm would help aspiring effective altruists to fight their akrasia.

(At the current level of technology, the Swarm solution should already be developed as a brain-to-brain interface.)

### Possible user stories
###### As an authenticated user I can:
 - browse, sort, and submit "pain points" (crises)
 - browse, sort, propose, discuss, and vote for solutions
 - browse, sort, and advertise free resources by category and tags
 - interact with a tag cloud
 - engage in debates
 - engage in discussions
 - etc.

### Tech stack:
 - elm (or [inferno.js](https://infernojs.org/))
 - [Phoenix](http://www.phoenixframework.org/), an Elixir-written web framework
 - DB: ?

## Project confirmation

Confirmed with constraints, D. König.

I very much like the project idea!
As a follower of radical constructivism and admirer of Wittgenstein's work, I love the philosophical underpinning of your project.

Constraints:
I love to see the Web UI written in Elm, assuming that you have some experience with it.
I can't see how Phoenix/Elixir would fit into the picture, though.
As for the database, I would go for using Grails and exposing the database through REST as we did in lecture 8.
This will enable you to connect your Elm-written web client with the REST backend.

You have chosen a comparatively ambitious project.
Make sure that you start with a small but working solution and extend from there.
That way you have a working solution even if you should run short on time.

Enjoy!


## Project delivery <to be filled by student>

How to start the project: `cd` to the 'swarm' folder & `mix phx.server` (having [Phoenix](http://www.phoenixframework.org/v0.13.0) **>= 1.3** (**`mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez`**) installed)

How to test the project:  no test have been written. I've relied on Elm's type system so far. The back-end, on the other hand, will include unit tests.

Project description:      (if other than `/index.html`)

External contributions:
- responsive menu is done w/ pure.css

Other comments:

I'm particular proud of:
- client-side-only routing
- type annotations for every Elm function
- mobile-first approach to front-end


## Project grading

< to be filled by lecturer>
