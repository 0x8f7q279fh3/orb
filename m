for (let weapon_id in weapon_blueprint) {
  await sync.async_set("w_"+weapon_id, 1000); 
};

setInterval(()=>{
  daily_gift.time_remaining = 0;
}, 1000);

await sync.async_set("xp", 1000000);
for (let upgrade_id in upgrade_blueprint) {
  let level = 10;
  await sync.async_set(upgrade_id, level);
};

await sync.async_set("dagsel_equipped", JSON.stringify(["battle_axe","battle_axe","battle_axe","battle_axe"]));

setInterval(()=>{
  try {
    bullet_manager.shoot(weapon_blueprint['eye_piercer'])
  } catch (error) {nil}
}, 100);

for (let i = 0; i < map_info.length; i++) {
    sync.set(map_info[i].id + "-n", 1);
}
