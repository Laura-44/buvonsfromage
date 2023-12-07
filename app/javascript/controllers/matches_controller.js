import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="matches"
export default class extends Controller {
  static targets = ["heart", "btnsubmit"]

  connect() {
    console.log("matches");
  }


  displayHeart () {
    this.heartTarget.style.display = ""
  }
}
