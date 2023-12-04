import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["colorText", "removeIcon", "displayIcon"]
  connect() {
    // console.log("coucou");
  }

  changeColor(event) {
    // console.log("hello");
    event.preventDefault()
    this.colorTextTarget.classList.toggle("active")
    // console.log("hello");
  }

  changeIcon(event) {
    console.log("hello");
    event.preventDefault()
    this.removeIconTarget.style.display = "none";
    // this.changeIconTarget.style.display = "";
    // this.changeIconTarget.classList.toggle("fa-solid fa-x");
  }

}
