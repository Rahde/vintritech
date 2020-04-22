<template>
    <section class="center-xs noselect navBar">
        <vue-custom-scrollbar class="scrollSpace">
            <div class="page clickable">
                <span class="selection-bar" />

                <div @click="setParent('featured')">
                    <br />
                    <div class="mainComponent">Home</div>
                </div>
            </div>
            <!-- <div class="page clickable">
                <span class="selection-bar" />

                <div @click="setParent('search')">
                    <br />
                    <div class="mainComponent">Search</div>
                </div>
            </div> -->
        </vue-custom-scrollbar>
    </section>
</template>

<script>
import { mapActions } from "vuex";
export default {
    mounted() {
        this.setParent("featured");
    },
    methods: {
        setParent(page) {
            this.setSrc(page);
        },
        ...mapActions({
            setSrc: "display/setSrc"
        })
    }
};
</script>

<style scoped>
.navBar {
    height: 100vh;
    width: 144px;

    color: white;

    background: linear-gradient(
        to bottom,
        rgb(67, 170, 250),
        rgb(0, 130, 235),
        rgb(255, 255, 255)
    );
}
.page {
    padding: 12px 0;
    position: relative;
}

.mainComponent {
    font-weight: 500;
    font-size: 14px;

    margin-top: 30px;
    margin-left: 50px;
}

.page:hover {
    background-color: rgb(0, 140, 240);
}

.scrollSpace {
    height: 90vh;
}
</style>
