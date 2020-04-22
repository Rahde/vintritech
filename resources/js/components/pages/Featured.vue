<template>
    <div>
        <div class="DashContainer DashBorder fullWidth">
            <div class="CardTitle">
                Today's Featured Books
            </div>
            <div class="row CardSubtitle">Click to view more</div>
            <div class="rootGroup">
                <TableHeaders />
                <TableRows
                    v-for="book of books"
                    :book="book"
                    :key="book.title"
                />
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from "vuex";
export default {
    mounted() {
        this.fetchFeatured();
    },
    computed: {
        ...mapGetters("books", {
            books: "getFeaturedList"
        })
    },
    methods: {
        ...mapActions("books", {
            fetchFeatured: "fetchFeatured"
        })
    }
};
</script>

<style scoped>
.DashContainer .CardTitle {
    font-weight: 700;
    font-size: 30px;
    color: #000;
    margin: 30px 0px 0px 15px;
}
.DashContainer .CardSubtitle {
    font-weight: 500;
    font-size: 20px;
    color: #000;
    margin: 0px 0px 20px 15px;
}
.rootGroup {
    margin: 25px 10px 0px;
}
</style>
