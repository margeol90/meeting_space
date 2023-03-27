import { Controller } from '@hotwired/stimulus';
import Splide, { EVENT_LAZYLOAD_LOADED } from '@splidejs/splide';

export default class extends Controller {
  connect() {
    const splide = new Splide(this.element, {
      type: 'loop',
      autoplay: true,
      perPage: 7,
      drag: 'free',
      focus: 'center',
      pauseOnHover: false,
      pauseOnFocus: false,
      interval: 4000,
      speed: 800,
      lazyLoad: 'nearby',
      trimSpace: false,
      pagination: false,
      easing: 'cubic-bezier(0.645, 0.045, 0.355, 1)',
    });

    splide.mount();
  }
}
