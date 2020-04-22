<template>
  <div class="fullWidth">
    <div class="container">
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Title</div>
        <div class="col py-3 border bg-light">{{book.title}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Author</div>
        <div
          class="col py-3 border bg-light"
          v-for="author of book.author"
          :key="author.id"
        >{{author.name}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Status</div>
        <div class="col py-3 border bg-light">{{book.current_status}}</div>
        <div
          class="col py-3 border bg-light"
          v-if="book.due_date"
        >Due back: {{formatDate(book.due_date)}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Overview</div>
        <div class="col py-3 border bg-light">{{book.overview}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Published</div>
        <div class="col py-3 border bg-light">{{book.date_published}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">ISBN</div>
        <div class="col py-3 border bg-light">{{book.isbn}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Collections</div>
        <div class="col py-3 border bg-light">
          <div class="row" v-for="collection of book.collection" :key="collection.id">
            <div class="col">{{collection.collection}}</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import moment from "moment";
export default {
  props: ["book"],
  methods: {
    formatDate(date) {
      return moment(String(date)).format("YYYY-MM-DD");
    }
  }
};
</script>