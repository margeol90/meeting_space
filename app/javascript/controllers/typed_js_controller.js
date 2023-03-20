import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Book meeting spaces anytime", "Book meeting spaces <strong>anywhere</strong>...",],
      typeSpeed: 150,
      backspeed: 150,
      loop: true
    })
  }
}
