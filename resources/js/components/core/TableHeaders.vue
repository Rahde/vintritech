<template>
    <div class="row headerRow nospacing">
        <div class="textHeader headerTextSize"></div>
        <div class="col-xs-header textHeader">
            Title
        </div>
        <div class="textHeader headerTextSize">
            Author
        </div>
        <div class="textHeader headerTextSize">
            Editon
        </div>
        <div class="textHeader headerTextSize">
            Published
        </div>
        <div class="textHeader headerTextSize">
            Status
        </div>
    </div>
</template>

<style scoped>
.headerRow {
    font-size: 20px;
    background-color: rgb(243, 243, 243);
    margin: 0.5px;
}
.headerTextSize {
    min-width: 86px !important;
    max-width: 100px !important;
    text-align: left;
    margin-left: 9px;
}

.col-xs-header {
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-basis: 0;
    max-width: 70%;
}
</style>
