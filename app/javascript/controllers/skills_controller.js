import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "createForm", "searchForm" ]

  get queryInput() {
    return this.searchFormTarget.querySelector('#query')
  }

  search(e) {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.triggerSearchForm(e)
    }, 200)
  }

  triggerSearchForm(e) {
    this.queryInput.value = e.target.value

    this.searchFormTarget.requestSubmit()
  }
}
