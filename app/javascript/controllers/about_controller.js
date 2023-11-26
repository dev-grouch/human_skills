import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("About Controller loaded", this.element)
  }
}
