<template>
  <div class="row nospacing">
    <Wave />
    <Navbar ref="Nav" />
    <div class="col-xs Main">
      <div class="row bottom-xs fullWidth topBar">
        <!-- Filler space -->
      </div>
      <div>
        <h1 class="welcomeTitle">Welcome to The Library!</h1>
      </div>
      <div>
        <div class="DashContainer">
          <span class="searchBar">
            <input
              class="roundInput fullWidth"
              ref="searchBar"
              placeholder="Search The Library.  Results will appear below"
            />
          </span>
        </div>
        <!-- Allow for dynamic viewer dependant on the src and layout choice -->
        <component :is="viewer" ref="viewer" class="fullWidth" />
        <ModalBase ref="viewModel" />
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";
export default {
  mounted() {
    let _this = this;
    this.$bus.$on("openModal", (id, component = null, src = null) => {
      console.log("open model ", id);
      console.log(_this.$refs);
      _this.$refs.viewModel.show(id, component, src);
    });
  },
  computed: {
    viewer() {
      return this.src;
    },
    ...mapGetters({
      src: "display/getSrc"
    })
  }
};
</script>

<style scoped>
.Main {
  overflow: hidden;
  height: 100vh;
  width: 90%;
}

.topBar {
  height: 120px;
  /* height: 110px; */
}

.welcomeTitle {
  font-weight: 800;
  font-size: 40px;

  margin: 0 0 0 14px;
}
</style>
