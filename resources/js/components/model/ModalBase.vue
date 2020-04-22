<template>
  <div class="modal-body modal-mask" v-if="book">
    <div class="modal-size" role="document">
      <div class="modal-content">
        <!-- <div class="modal-header"></div> -->
        <div class="modal-body">
          <div class="row">
            <div class="col-m-9">
              <div class="row">
                <div class="col-sm-4">
                  <img :src="book.image_url" class="tableImage" />
                </div>
                <div class="col-sm-8">
                  <div class="fullWidth">
                    <ul v-if="tabs.length > 1" class="center-xs tab">
                      <li
                        v-for="tab in tabs"
                        :class="{'active': activeTab.component == tab.component}"
                      >
                        <a
                          class="noselect Clickable"
                          :class="tab.title"
                          @click="setTab(tab)"
                          v-html="tab.title"
                        >tab.title</a>
                      </li>
                    </ul>
                  </div>
                  <div class="row fullWidth">
                    <component
                      :is="activeTab.component"
                      ref="PanelContent"
                      style="position: relative;"
                      :book="book"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button
            type="button"
            class="btn btn-secondary"
            data-dismiss="modal"
            @click="closeModal()"
          >Close</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// tab array can allow for the quick addition of new pages. IE reviews
import { mapActions, mapGetters } from "vuex";
export default {
  name: "ModalBase",
  data() {
    return {
      activeTab: null,
      tabs: [
        {
          title:
            "<span class='textHeader modalTab clickable' :class=''>Detail</span>",
          component: "BookDetail"
        },
        {
          title: "<span class='textHeader modalTab clickable'>Library</span>",
          component: "LibraryDetail"
        }
      ]
    };
  },
  methods: {
    show(id, component = null, src = null) {
      this.$set(this, "activeTab", this.tabs[0]);
      this.fetchDataObject(id);
    },
    closeModal() {
      this.fetchDataObject(null);
    },
    setTab(tab) {
      this.$set(this, "activeTab", tab);
    },
    ...mapActions("books", {
      fetchDataObject: "fetchDataObject"
    })
  },
  computed: {
    ...mapGetters("books", {
      book: "getDataObject"
    })
  }
};
</script>
<style scoped>
.modal-mask {
  position: fixed;
  z-index: 100;
  left: 0;
  top: 0;

  display: flex;
  align-items: center;
  justify-content: center;

  width: 100%;
  height: 100%;

  background-color: rgba(0, 0, 0, 0.9);
  transition: opacity 0.5s ease;
}

.modal-container {
  border-radius: 5px;
  /* max-width: 50vw; */
}

.modal-size {
  /* max-height: calc(100vh - 22px); */
  max-width: 97vw;
  z-index: 2;
}
.modalTab {
  padding-left: 60px;
  font-size: 11pt;
}
.active {
  text-decoration: underline;
}
.tableImage {
  width: 75%;
}
.PanelContent {
  margin: 50px 0px;
}
.tab {
  display: -webkit-box;
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  position: relative;
}
</style>
