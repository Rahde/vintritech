import Axios from "axios";

// Any future modules will use getDataObject and getList, etc.
// Makes add new modules easier as we can just swap out the reference and keep all the function names the same
const state = {
    bookInfo: null,
    books: [],
    bookFeatured: []
};
const getters = {
    getDataObject: state => state.bookInfo,
    getList: state => state.books,
    getFeaturedList: state => state.bookFeatured
};
const mutations = {
    setDataObject: (state, payload) => {
        state.bookInfo = payload;
    },
    setBooks: (state, payload) => {
        state.books = payload;
    },
    setFeaturedList: (state, payload) => {
        state.bookFeatured = payload;
    }
};
const actions = {
    fetchList: ({ commit }, payload) => { },
    fetchFeatured: ({ commit }, payload) => {
        Axios.get("book/featured").then(response => {
            commit("setFeaturedList", response.data);
        });
    },
    fetchDataObject: ({ commit }, payload) => {
        let path = "book/" + payload;
        commit("setDataObject", null);
        if (payload !== null)
            return Axios.get(path).then(response => {
                commit("setDataObject", response.data);
            });
    }
};
export default {
    namespaced: true,
    state,
    getters,
    mutations,
    actions
};
