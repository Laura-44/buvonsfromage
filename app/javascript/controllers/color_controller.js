import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="color"
export default class extends Controller {
  connect() {
    console.log("coucou");
  }
}
