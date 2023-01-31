import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-confirmation"
export default class extends Controller {
  static get targets() { return["testing", "notification"]}
  connect() {

    console.log(this.testingTarget)
    console.log("hello")
  }
  // confirm(event) {
  //   event.preventDefault()
  //   console.log(this.notificationTarget)
  //   // const url =
  //   // fetch(url, options)
  //   // .then(response => response.json())
  //   // .then(data) => {
  //   //   console.log(data)
  //   // }
  // }
}
