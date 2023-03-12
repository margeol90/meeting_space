import { Controller } from "@hotwired/stimulus"

const application = Application.start();

import { Tabs } from "tailwindcss-stimulus-components"
application.register('tabs', Tabs)


// Connects to data-controller="tabs"
export default class extends Controller {
  connect() {
  }
}
