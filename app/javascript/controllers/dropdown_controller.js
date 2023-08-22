import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["button", "menu"]

  connect() {
    this.buttonTarget.addEventListener("click", () => {
      this.toggleMenu();
    });

    document.addEventListener("click", (event) => {
      if (!this.element.contains(event.target)) {
        this.closeMenu();
      }
    });
  };

  toggleMenu() {
    this.menuTarget.classList.toggle("hidden");
  }

  closeMenu() {
    this.menuTarget.classList.add("hidden");
  }

}
