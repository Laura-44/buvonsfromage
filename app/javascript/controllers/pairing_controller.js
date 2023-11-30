import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pairing"
export default class extends Controller {
  connect() {
    // console.log("Hello");
  }
  display(event) {
    event.preventDefault;
    console.log("coucou");
  }
}
