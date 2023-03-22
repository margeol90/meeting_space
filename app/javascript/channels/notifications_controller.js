import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="notifications"
export default class extends Controller {
  static targets = ["notifications"]

  connect() {
    consumer.subscriptions.create("NotificationsChannel", { received(data) { console.log(data) }
  }
}
