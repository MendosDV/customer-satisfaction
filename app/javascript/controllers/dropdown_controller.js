import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["button", "menu"]

  connect() {
    console.log("Hello, Stimulus!");
    console.log(this.buttonTarget);

    this.buttonTarget.addEventListener("click", () => {
      this.toggleMenu();
      console.log("clicked");
    });

    document.addEventListener("click", (event) => {
      if (!this.element.contains(event.target)) {
        this.closeMenu();
        console.log("closed");
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
