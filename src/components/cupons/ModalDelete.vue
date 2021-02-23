<template>
    <b-modal v-model="showModal" title="Remover Cupom" cancel-title="Cancelar" ok-title="Remover" @ok="deleteItem()" @hidden="clearData()">
        <p>Tem certeza que deseja remover esse cupom?</p>
    </b-modal>
</template>


<script>
import axios from 'axios'

export default {

    data: () => {
        return {
            id: '',
            showModal: false
        }
    },

    methods: {
        changeShowModal(id) {
            this.id = id
            this.showModal = !this.showModal
        },

        clearData() {
            Object.assign(this.$data, this.$options.data())
        },

        deleteItem() {
            axios({
                method: 'DELETE',
                url: 'http://localhost:3000/cupon/' + this.id,
            }).then((response) => {
                this.$bvToast.toast(response.data.message, {
                    autoHideDelay: 3000,
                    variant: response.data.status,
                })
            })
        },
    }
}
</script>