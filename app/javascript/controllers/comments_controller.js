import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
	initialize() {}

	connect() {}

	/**
	 * @param {MouseEvent} e
	 */
	toggleForm(e) {
		e.preventDefault()
		e.stopImmediatePropagation()

		const formId = e.params.form
		const bodyId = e.params.body

		const form = document.querySelector(`#${formId}`)
		const body = document.querySelector(`#${bodyId}`)

		form.classList.toggle('d-none')
		body.classList.toggle('d-none')
	}
}
