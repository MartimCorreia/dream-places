import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="landing-title"
export default class extends Controller {
  static get targets() { return["title","content1","content2"]}
  connect() {
    console.log("Connected to landing-title controller");
    console.log(this.content1Target)

  }
  titleShow() {
    this.titleTarget.classList.remove("hidden-text");
    setTimeout(() => {
      this.content1Target.classList.remove("hidden-text");
      this.content2Target.classList.remove("hidden-text");
    }, 1000);
  }
}
