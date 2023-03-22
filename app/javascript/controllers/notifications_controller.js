import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="notifications"
export default class extends Controller {
  static targets = ["notifications"]

  connect() {
    console.log("connecting to Notification Channel");
    createConsumer().subscriptions.create("NotificationsChannel")

  }
}
