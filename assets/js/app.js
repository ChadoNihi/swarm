// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html";
import Elm from './main';

const PPs = [
        {
          title: "Famine in Somalia",
          description: "Famine in Somalia and neighboring regions; no water, diseases. No media attention."
        },
        {
          title: "Seal slaughter in Canada",
          description: "Half-year-long 'harpening' of baby seals. No media attention."
        }
      ],
      elmDiv = document.querySelector('#elm-target');

if (elmDiv) {
  Elm.Main.embed(elmDiv, null);
}

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"
