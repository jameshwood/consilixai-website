// app/javascript/controllers/theme_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["toggle"];

  connect() {
    const savedTheme = localStorage.getItem("theme");
    if (savedTheme) {
      this.setTheme(savedTheme);
      this.toggleTarget.checked = savedTheme === this.toggleTarget.value; // Use the checkbox value
    } else {
      // If no saved theme, set the theme from the html data attribute
      const htmlTheme = document.documentElement.getAttribute("data-theme");
      if (htmlTheme) {
        this.setTheme(htmlTheme);
        this.toggleTarget.checked = htmlTheme === this.toggleTarget.value; // Use the checkbox value
      }
    }
  }

  toggle() {
    const theme = this.toggleTarget.checked ? this.toggleTarget.value : document.documentElement.getAttribute("data-light-theme"); // Use the value from data attribute
    this.setTheme(theme);
  }

  setTheme(theme) {
    document.documentElement.setAttribute("data-theme", theme);
    localStorage.setItem("theme", theme); // Save the theme to local storage
  }
}