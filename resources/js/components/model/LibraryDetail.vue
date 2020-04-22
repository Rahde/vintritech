<template>
  <div class="fullWidth">
    <div class="container">
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Current Branch</div>
        <div class="col py-3 border bg-light">{{book.current_branch}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Hold Count</div>
        <div class="col py-3 border bg-light">{{book.hold_count}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">No. Copies</div>
        <div class="col py-3 border bg-light">{{book.number_of_copies}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Publisher</div>
        <div class="col py-3 border bg-light">{{book.publisher}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">OCAID</div>
        <div class="col py-3 border bg-light">{{book.ocaid}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col py-3 border bg-light textHeader">Dewey Decimal</div>
        <div class="col py-3 border bg-light">{{book.dewey_decimal}}</div>
      </div>
      <div class="row mx-lg-n5">
        <div class="col-m-6 py-3 border bg-light textHeader">Loan History</div>
        <div class="col py-3 border bg-light">
          <div class="row">
            <div class="col">Check Out Date</div>
            <div class="col">Check In Date</div>
            <div class="col">Check Out By</div>
            <div class="col">Check In By</div>
            <div class="col">Check Out Location</div>
            <div class="col">Check In Location</div>
            <div class="col">Check Out condition</div>
            <div class="col">Check In condition</div>
          </div>
          <div class="row" v-for="loan of book.loan" :key="loan.id">
            <div class="col">{{formatDate(loan.check_out_date)}}</div>
            <div class="col">{{formatDate(loan.check_in_date)}}</div>
            <div class="col">{{loan.check_out_by}}</div>
            <div class="col">{{loan.check_in_librarian_id}}</div>
            <div class="col">{{loan.check_out_location}}</div>
            <div class="col">{{loan.check_in_location}}</div>
            <div class="col">{{loan.check_out_condition}}</div>
            <div class="col">{{loan.check_in_condition}}</div>
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