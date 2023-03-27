import { Controller } from '@hotwired/stimulus';
import Splide, { EVENT_LAZYLOAD_LOADED } from '@splidejs/splide';

export default class extends Controller {
  connect() {
    const splide = new Splide(this.element, {
      type: 'loop',
      autoplay: true,
      perPage: 5,
      drag: 'free',
      focus: 'center',
      pauseOnHover: true,
      interval: 2500,
      lazyLoad: 'nearby',
      trimSpace: false,
      pagination: false,
    });

    splide.mount();
  }
}
