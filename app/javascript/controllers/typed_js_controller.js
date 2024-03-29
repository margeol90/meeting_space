import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Book meeting spaces <strong><i>anytime</i></strong>", "Book meeting spaces <strong><i>anywhere</i></strong>",],
      typeSpeed: 60,
      startDelay: 300,
      backspeed: 300,
      backDelay: 400,
      loop: true
    })
  }
}
