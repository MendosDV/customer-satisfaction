import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.classList.add("fade-out");
      setTimeout(() => {
        this.element.classList.add("hidden");
      }, 1000);
    }, 6000);
  }
}
