def get_max_health(modifier, level):
    return modifier * level


my_modifier = 5
my_level = 10

# don't touch above this line

max_health = get_max_health(4 ,4)

# don't touch below this line

print(f"max_health is: {max_health}")

#2
player_level = 4

# Don't touch below this line


def calculate_health(modifier):
    return player_level * modifier


def calculate_primary_stats(armor_bonus, modifier):
    return armor_bonus + modifier + player_level


print(f"Character has {calculate_health(10)} max health.")

print(f"Character has {calculate_primary_stats(3, 8)} primary stats.")
