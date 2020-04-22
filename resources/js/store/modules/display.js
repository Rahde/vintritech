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
