# Infection

- Some way to start it (`/trigger start/stop`)
  - block limit
  - use block from hand
- Spread speed
- particles above blocks

## Bad effects

- standing on it should do something bad
- corrputed mobs spawn
  

## Implementation

- infect one block (using a marker `(tag=infect)` to mark it as infected)
- randomly tick every marker (with `tag=infect`), for each:
  - scan nearby blocks (radi of 2). randomly choose 2-4 blocks
  - if a block is not infected, infect it

infecting a block:
- set block to infected block (using `setblock` command)
- set a marker on the block (using `summon` command)


## Mobs

- zombies that hit u poison u
  - sometimes they cough poison clouds
- skeletons that shoot poison arrows
- poison spiders
- infected creepers that explode into a cloud of poison that infects nearby players
- mobs that spawn on slimes