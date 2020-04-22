import Vue from "vue";
import Vuex from "vuex";
import display from "./modules/display";
import books from "./modules/books";

Vue.use(Vuex);

export default new Vuex.Store({
    modules: {
        display,
        books
    }
});
