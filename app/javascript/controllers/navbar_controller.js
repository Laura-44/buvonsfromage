import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["backgroundColor"]

  connect() {
    // console.log("Coucou");
  }

  background() {
    // console.log("coucou");
    this.backgroundColorTarget.classList.toggle("active")
    // console.log("coucou");
  }
}
