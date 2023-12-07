import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="matches"
export default class extends Controller {
  static targets = ["heart"]

  connect() {
    console.log("matches");
  }


  displayHeart () {
    console.log("coucou");
    this.heartTarget.style.display = ""
    console.log("hello");
    setTimeout(() => {
      this.heartTarget.style.display = "none";
    }, 5000);
  }
}
