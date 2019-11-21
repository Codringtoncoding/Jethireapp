import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!

flatpickr(".datepicker", {
 // altInput: true
  minDate: "today",
  maxDate: new Date().fp_incr(180) // 180 days from now
})

flatpickr(".timepicker", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
});
