/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */
import Vue from "vue";
import store from "./store/store";

require("./bootstrap");

window.Vue = require("vue");
window.$ = require("jquery");
window.jQuery = require("jquery");
window.axios = require("axios");
window.moment = require("moment");
window.$store = store;

window.axios.defaults.headers.common = {
    "X-CSRF-TOKEN": window.Laravel.csrfToken,
    "X-Requested-With": "XMLHttpRequest"
};

const EventBus = new Vue();
Object.defineProperties(Vue.prototype, {
    $bus: {
        get: function() {
            return EventBus;
        }
    }
});

/* We will require in our components.js file, which contains our component
 * files.  Putting them in their own file reduces clutter.
 */
require("./components.js");

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    store,
    el: "#app"
});

Vue.prototype.$store = store;
