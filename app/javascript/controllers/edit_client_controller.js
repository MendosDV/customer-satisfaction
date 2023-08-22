  import { Controller } from "@hotwired/stimulus"

  export default class extends Controller {

    static targets = ["formPlaceholder"];

    edit(event) {
      const clientId = event.target.dataset.id;
      const url = `/clients/${clientId}/edit`;

      fetch(url, {
        headers: {
          Accept: "application/json",
        },
      })
      .then(response => response.json())
      .then(data => {
        const clientEditPlaceholder = this.element.querySelector('#client-edit-placeholder');
        clientEditPlaceholder.innerHTML = data.partial;
        const showContent = document.querySelector('.show-content');
        showContent.classList.add('hidden');
      });
    }
  }
