<template>
    <div class="row">
        <div class="col-xs nopadding">
            <vue-custom-scrollbar>
                <!-- Allow for dynamic viewer dependant on the src and layout choice -->
                <component :is="viewer" ref="viewer" />
            </vue-custom-scrollbar>
        </div>
    </div>
</template>

<script>
export default {
    computed: {
        viewer() {}
    }
};
</script>

<style scoped></style>
