import { Controller } from '@hotwired/stimulus';
import Splide from '@splidejs/splide';

export default class extends Controller {
  connect() {
    const splide = new Splide(this.element, {
      type: 'loop',
      autoplay: true,
      perPage: 3,
      pauseOnHover: true,
      interval: 2000,
    });

    splide.mount();
  }
}
