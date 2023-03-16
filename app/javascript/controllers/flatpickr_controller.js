import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["startDate", "endDate"];

  connect() {
    flatpickr(this.startDateTarget, {});
    flatpickr(this.endDateTarget, {});
    const newBookingForm = document.getElementsByClassName("new_booking")[0];
    const editBookingForm = document.getElementsByClassName("edit_booking")[0];
    const bookingForm = newBookingForm ? newBookingForm : editBookingForm;
    console.log(bookingForm);
    if (bookingForm) {
      const picker = flatpickr("#start_date", {
        plugins: [rangePlugin({ input: "#end_date" })],
        minDate: "today",
        // calendar is always visible with below:
        inline: true,
        disable: JSON.parse(bookingForm.dataset.unavailableDates),
      });
    }
  }
}
