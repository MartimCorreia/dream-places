import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="conversation-trigger"
export default class extends Controller {
  static get targets() { return ["chats", "chatsId"] }

  connect() {
    const buttons = document.getElementsByClassName('card');
    // console.log(this.chatIdTargets)
    console.log(buttons)
    console.log("Connected to conversation-trigger controller.")
  }
  // render(event) {
  //   // finnaly getting the id
  //   console.log(event.currentTarget.id.match(/\d{1,6}/)[0])
  //   this.chatsTarget.innerHTML = `<div class="container chatroom" data-controller="chatroom-subscription" data-chatroom-subscription-chatroom-id-value="<%= @chatroom.id %>">
  //                                   <h1> Chatroom.find(${event.currentTarget.id.match(/\d{1,6}/)[0]}).name  </h1>
  //                                 </div>`;

  // }
}
