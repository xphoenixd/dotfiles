#!/usr/bin/env node

const { exec } = require("child_process");

async () => {
  exec("killall -q polybar");
  require("util").promisify(setTimeout)(2000);

  exec(
    "polybar top -c ~/.config/polybar/config-top.ini & polybar bottom -c ~/.config/polybar/config-bottom.ini &"
  );
};
