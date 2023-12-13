// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import jquery from "jquery"
import * as cookies from "js-cookie"


window.jQuery = jquery
window.$ = jquery
window.Cookies = cookies.default


function saveDarkMode(value) {
  Cookies.set("dark-mode", value);
};

function applyDarkMode(new_mode) {
  var link = $("#dark-mode");
  var html_element = $("html");

  if (new_mode) {
    html_element.attr("data-bs-theme", "dark");
    link.text("Light Mode");
  } else {
    html_element.removeAttr("data-bs-theme");
    link.text("Dark Mode");
  };
};

function initializeDarkMode() {
  var current_mode = Cookies.get("dark-mode") == "true";

  applyDarkMode(current_mode);
};

$(document).on("click", "#dark-mode", function (event) {
  var current_mode = Cookies.get("dark-mode") == "true";
  var new_mode = !current_mode;

  saveDarkMode(new_mode);
  applyDarkMode(new_mode);
});

initializeDarkMode();

