<template>
    <div class="container-fluid">
        <top-bar></top-bar>
        <bread-crumb></bread-crumb>

        <div class="row">
            <div class="col-auto">
                <button type="button" class="btn btn-dark ml-auto">Novo Produto</button>
            </div>
            <div class="col-auto">
                <button type="button" class="btn btn-dark ml-auto" disabled>Excluir Produto</button>
            </div>
        </div>

        <div class="row mx-1">
            <div class="col d-flex flex-wrap p-0">
                <div class="col-auto p-1 border border-dark rounded mx-3 my-3 card-product" :class="{ 'bg-danger': item.active }" v-for="(item, key) in productList" :key="key" @click="selectProduct(item)">
                    <img :src="item.img" height="100" class="img-fluid" :alt="item.name">
                    <div class="border-top">
                        <span class="text-center">Preço: {{ formaterMoney(item.price) }}</span>
                    </div>
                </div>
            </div>
        </div>

    </div>
</template>


<script>
import TopBar from '../components/TopBar'
import breadCrumb from '../components/BreadCrumb'

export default {

    components: {
        TopBar,
        breadCrumb
    },

    data: () => {
        return {
            productList: [
                { id: 1,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 2,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 3,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 4,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 5,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 6,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 7,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 8,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 9,  active: false, name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
                { id: 10, active: false,  name: 'Maquiná de cortar cabelo', img: 'https://http2.mlstatic.com/D_Q_NP_977521-MLA43356954096_092020-AB.webp', price: 200 },
            ]
        }
    },


    methods: {

        formaterMoney(value) {
            return value.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
        },

        selectProduct(item) {
            item.active = !item.active
        },

    }
    
}
</script>


<style lang="scss" scoped>

.card-product{
    &:hover{
        cursor: pointer;
    }

    // max-height: 200px;
    max-width: 200px;
}
 
</style>
