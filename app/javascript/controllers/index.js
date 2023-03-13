// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application";

import FlatpickrController from "./flatpickr_controller";
application.register("flatpickr", FlatpickrController);

import HelloController from "./hello_controller";
application.register("hello", HelloController);

import MapController from "./map_controller";
application.register("map", MapController);

import { Application } from "@hotwired/stimulus";
import ReadMore from "stimulus-read-more";

application.register("read-more", ReadMore);

import StarRatingController from "./star_rating_controller";
application.register("star-rating", StarRatingController);
