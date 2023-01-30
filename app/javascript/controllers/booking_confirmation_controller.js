import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-confirmation"
export default class extends Controller {
  
  connect() {

    console.log(this.testingTarget)
    console.log("hello")
  }
}
