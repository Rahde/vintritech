<template>
    <svg :style="waveColour" viewBox="0 0 500 150">
        <path
            d="M-0.84,39.95 C29.62,-39.95 179.73,37.00 504.79,24.17 L500.00,150.00 L0.00,150.00 Z"
        />
    </svg>
</template>

<script>
export default {
    data: function() {
        return {
            animating: false,
            currentScheme: {
                current: {
                    start: "#43aafa",
                    finish: "#0081eb"
                },
                previous: {
                    start: "#FFFFFF",
                    finish: "#FFFFFF"
                }
            }
        };
    },
    computed: {
        waveColour() {
            return `background: linear-gradient(to right,${this.currentScheme.current.start}, ${this.currentScheme.current.finish},${this.currentScheme.previous.start}, ${this.currentScheme.previous.finish})`;
        }
    }
};
</script>

<style scoped>
svg {
    width: 100%;
    z-index: -1;
    fill: white;

    position: absolute;
    background-size: 300% 300% !important;
}

@keyframes waveTransition {
    0% {
        background-position: 100% 0%;
    }
    100% {
        background-position: 0% 0%;
    }
}
</style>
