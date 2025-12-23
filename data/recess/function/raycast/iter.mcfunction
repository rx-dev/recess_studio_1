#> Format:
#  {
#     steps: int,
#     step_size: float,
#     on_step: command,                 # skipped if empty string
#     on_block_hit: command,            # skipped if empty string
#     on_entity_hit: command,           # skipped if empty string
#     entity_selector_args: string      # e.g. ,tag=taco_truck
#  }

scoreboard players add #iter raycast 1

$execute unless data storage recess:raycast input{on_step: ""} run function recess:raycast/call_command {command: "$(on_step)"}

$execute \
    unless data storage recess:raycast input{on_entity_hit: ""} \
    positioned ~-0.05 ~-0.05 ~-0.05 \
    as @e[tag=!self,dx=0$(entity_selector_args)] \
    run function recess:raycast/check_entity_hit {function: "$(on_entity_hit)"}

$execute \
    unless data storage recess:raycast input{on_block_hit: ""} \
    unless block ~ ~ ~ air \
    if score #hit raycast matches 0 \
    run function recess:raycast/hit {function: "$(on_block_hit)"}

$execute \
    if block ~ ~ ~ air \
    if score #hit raycast matches 0 \
    if score #iter raycast matches ..$(steps) \
    positioned ^ ^ ^$(step_size) \
    run function recess:raycast/iter with storage recess:raycast input
