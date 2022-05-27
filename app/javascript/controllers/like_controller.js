import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["button"]
  static values = { id: Number }

  like(event) {
    event.preventDefault()

    const seed = event.currentTarget
    fetch(`/hives/${this.idValue}/likes`, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() }
    })
      .then(response => response.json())
      .then((data) => {
        if (data.success) {
          this.buttonTarget.outerHTML = data.button
        }
      })
  };

  unlike(event) {
    event.preventDefault()

    const seed = event.currentTarget
    fetch(`/likes/${this.idValue}`, {
      method: "DELETE",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() }
    })
      .then(response => response.json())
      .then((data) => {
        if (data.success) {
          this.buttonTarget.outerHTML = data.button
        }
      })
  };
}
