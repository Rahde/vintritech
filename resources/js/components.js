// Main pages
Vue.component("mainpage", require("./components/pages/Main.vue").default);
Vue.component("featured", require("./components/pages/Featured.vue").default);

// Core Components
Vue.component("Navbar", require("./components/core/Navbar.vue").default);
Vue.component("Wave", require("./components/core/Wave.vue").default);
Vue.component(
    "Dataviewer",
    require("./components/core/Dataviewer.vue").default
);
Vue.component(
    "TableHeaders",
    require("./components/core/TableHeaders").default
);
Vue.component("TableRows", require("./components/core/TableRows").default);

// Model Components
Vue.component("ModalBase", require("./components/model/ModalBase").default);
Vue.component("BookDetail", require("./components/model/BookDetail").default);
Vue.component("LibraryDetail", require("./components/model/LibraryDetail").default);

// Installed components
Vue.component("vueCustomScrollbar", require("vue-custom-scrollbar"));
