// controls the view components that appear in Main.vue <component :is="viewer" ref="viewer" class="fullWidth" />

const state = {
    src: null
};
const getters = {
    getSrc: state => state.src
};
const mutations = {
    setSrc: (state, payload) => {
        state.src = payload;
    }
};
const actions = {
    setSrc: ({ commit }, payload) => {
        commit("setSrc", payload);
    }
};
export default {
    namespaced: true,
    state,
    getters,
    mutations,
    actions
};
