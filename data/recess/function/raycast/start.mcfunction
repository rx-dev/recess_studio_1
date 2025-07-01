#> Format:
#  {
#     steps: int,
#     step_size: float,
#     on_step: command,                 # skipped if empty string
#     on_block_hit: command,            # skipped if empty string
#     on_entity_hit: command,           # skipped if empty string
#     entity_selector_args: string      # e.g. tag=taco_truck
#  }

# make ray
tag @s add self
scoreboard players set #hit raycast 0
scoreboard players set #iter raycast 0

$data modify storage recess:raycast input set value { \
   steps: $(steps), \
   step_size: $(step_size), \
   on_step: "$(command)", \
   on_block_hit: "$(on_block_hit)", \
   on_entity_hit: "$(on_entity_hit)", \
   entity: "$(entity)" \
}

function recess:raycast/iter with storage recess:raycast input

tag @s remove self
