import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["startDate", "endDate"];

  connect() {
    flatpickr(this.startDateTarget, {});
    flatpickr(this.endDateTarget, {});
    // const newBookingForm = document.getElementById("new_booking");
    // console.log(newBookingForm);
    const startDateInput = document.getElementById("booking_start_date");
    const endDateInput = document.getElementById("booking_end_date");
    // const editBookingForm = document.getElementsByClassName("edit_booking")[0];
    // const bookingForm = newBookingForm ? newBookingForm : editBookingForm;
    // console.log(bookingForm);
    if (startDateInput) {
      const picker = flatpickr(".range_start", {
        plugins: [rangePlugin({ input: ".range_end" })],
        minDate: "today",
        // calendar is always visible with below:
        inline: true,
        // disable: JSON.parse(bookingForm.dataset.unavailableDates),
      });
    }
  }
}
