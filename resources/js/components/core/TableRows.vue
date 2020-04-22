<template>
    <div>
        <div
            class="row middle-xs tableRow nospacing clickable"
            @click="bookDetail(book.id)"
        >
            <div class=" rowTextSize">
                <img :src="book.image_url" class="tableImage" />
            </div>
            <div
                class="col-xs name text-truncate"
                :style="`padding-left: ${20 * book.level}px;`"
            >
                {{ book.title }}
            </div>
            <div
                class="rowTextSize col-xs-1"
                v-for="author of book.author"
                :key="author.id"
            >
                {{ author.name }}
            </div>
            <div class="rowTextSize col-xs-1">
                {{ book.edition }}
            </div>
            <div class="rowTextSize col-xs-1">
                {{ formatDate(book.date_published) }}
            </div>
            <div class="rowTextSize col-xs-1">
                {{ book.current_status }}
            </div>
        </div>
    </div>
</template>

<script>
import moment from "moment";
import { mapActions, mapGetters } from "vuex";
export default {
    props: ["book"],
    methods: {
        formatDate(date) {
            return moment(String(date)).format("YYYY-MM-DD");
        },
        bookDetail() {
            this.$bus.$emit("openModal", this.book.id, 0, null);
        }
    }
};
</script>

<style scoped>
.tableRow {
    font-size: 15px;
    margin: 0.5px;
}
.tableRow:hover {
    background-color: rgb(67, 170, 250);
}
.rowTextSize {
    min-width: 60px !important;
    max-width: 100px !important;
    text-align: left;
}
.col-xs-header {
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-basis: 0;
    max-width: 70%;
}
.tableImage {
    width: 75%;
}
.col-xs-1 {
    flex-basis: 8.33333333%;
    max-width: 8.33333333%;
}
.name {
    font-size: 20px;
    font-weight: 500;
}
.middle-xs {
    -webkit-box-align: center;
    align-items: center;
}
.text-truncate {
    width: 70%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
</style>
