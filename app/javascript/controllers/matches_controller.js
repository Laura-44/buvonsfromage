import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="matches"
export default class extends Controller {
  static targets = ["heart"]

  connect() {
    console.log("matches");
  }


  displayHeart () {
    this.heartTarget.style.display = ""
    setTimeout(() => {
      this.heartTarget.style.display = "none";
    }, 2000);
  }
}
