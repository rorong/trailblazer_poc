// app/javascript/controllers/toggle_publish_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["checkbox", "publishStatus"];

  togglePublish() {
    const id = this.data.get("id");
    const publishStatusElement = this.publishStatusTarget;

    fetch(`/toggle_publish/${id}`, {
      method: "POST",
      headers: {
        "X-CSRF-Token": document
          .querySelector('meta[name="csrf-token"]')
          .getAttribute("content"),
        },
      })
      .then((response) => response.json())
      .then((data) => {
          publishStatusElement.textContent = data.status ==="published" ? 'Yes' : 'No';
        });
  }

 connect() {
  }
}
