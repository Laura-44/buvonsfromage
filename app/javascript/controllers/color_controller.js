import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="color"
export default class extends Controller {
  static targets = ["activeColor"]
  connect() {
    // console.log("coucou");
  }

  displayColor(event) {
    // console.log("coucou");
    // event.preventDefault()
    this.activeColorTarget.classList.toggle("active")
    // console.log("coucou");
  }
}
