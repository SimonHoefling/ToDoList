import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  connect() {
    console.log("Sortable controller connected")

    Sortable.create(this.element, {
      // Sortable options and callbacks
    })
  }
}
