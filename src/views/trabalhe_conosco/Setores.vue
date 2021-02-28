<template>
    <div class="row">
        <div class="col-12">
            <span>teste</span>
        </div>
    </div>
</template>

<script>
export default {
    metaInfo: {
        title: 'Setores',
    },

    data: () => {
        return {
            benefitsList: [
                { id: 1, name: "Cartão ÚtilCard" }
            ]
        }
    },

    methods: {

        openAndCloseRow(item) {
            item.rowOpened = !item.rowOpened
            console.log(item.rowOpened)
        }


    }
    
}
</script>
