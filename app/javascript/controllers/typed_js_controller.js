import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Book meeting spaces <strong><i>anytime</i></strong>", "Book meeting spaces <strong><i>anywhere</i></strong>...",],
      typeSpeed: 25,
      backspeed: 25,
      loop: true
    })
  }
}
