import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["datestart", "dateend", "total", "price", "visibility"]

  connect() {

  }

  calculate() {
    const total_day = (new Date(this.dateendTarget.value) - new Date(this.datestartTarget.value))/ (3600000*24);
    const total = total_day * parseInt(this.priceTarget.innerHTML);
    if (total) {
      this.totalTarget.innerHTML = total
      this.visibilityTarget.style.visibility = "visible"
    }
  }
  total() {
  }
}
