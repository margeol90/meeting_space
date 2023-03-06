import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]

  connect() {
    flatpickr(this.startDateTarget, {})
    flatpickr(this.endDateTarget, {})
    const picker = flatpickr("#start_date", {
      "plugins": [rangePlugin({ input: "#end_date"})],
      minDate: "today",
      // calendar is always visible with below:
      inline: true
    })
  }
}
