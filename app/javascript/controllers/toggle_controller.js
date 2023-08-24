import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    this.togglableElementTarget.classList.add("d-none")
  }

  fire() {
    this.togglableElementTarget.classList.toggle("d-none")
  }
}
