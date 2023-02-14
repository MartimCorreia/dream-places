import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="notification-panel-subscription"
export default class extends Controller {
  static get values()  { return{notificationPanelId: Number}}

  connect() {
    // this.channel = createConsumer().subscriptions.create(
    //   { channel: "NotificationPanelChannel", id: this.notificationPanelIdValue },
    //   { received: data => console.log(data) }
    // );

    // console.log(`Subscribe to the notification_panel with the id ${this.notificationPanelIdValue}.`);
  }
}
