import * as log from "https://deno.land/std/log/mod.ts";

/**
 * @param {string[]} command 
 * @param param1 
 */
function process(command, { logLevel, message }) {
    log.debug(command.join(' '));
    log[logLevel](message);
    const p = Deno.run({ cmd: command });
    return p.close();
}

log.info("Running Global Update Script...");

Deno.chdir("/Users/gc/");
log.info("Moving to the home directory (~) ...");

await process(["sudo", "purge"], {
    logLevel: "info",
    message: "Purging Memory..."
});

console.log(await process(["sudo", "softwareupdate", "--list", "--all", "--install", "--restart"], {
    logLevel: "info",
    message: "Updating system..."
}));
