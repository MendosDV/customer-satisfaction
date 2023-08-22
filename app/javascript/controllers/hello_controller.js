import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.classList.add("fade-out");
      this.element.classList.add("zindex-negative");
    }, 6000);


  }
}
