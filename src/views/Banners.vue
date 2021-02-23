<template>
    <div class="container-fluid">
        <top-bar></top-bar>
        <bread-crumb></bread-crumb>

        <div class="row mb-3">
            <div class="col-12">
                <button type="button" class="btn btn-dark" @click="showModalAdd()">Novo</button>
            </div>
        </div>

        <div class="row">
            <div class="col-auto border border-dark rounded mx-2" v-for="(item, key) in bannerList" :key="key">
                <h6>{{ item.name }}</h6>
                <img :src="item.path" :alt="item.name" height="300">
            </div>
        </div>

    </div>
</template>

<script>
import TopBar from '../components/TopBar'
import breadCrumb from '../components/BreadCrumb'

export default {
    metaInfo: {
        title: 'Banners',
    },

    components: {
        TopBar,
        breadCrumb
    },


    data: () => {
        return{
            bannerList: [
                { name: 'Banner 1', path: 'https://www.pixelprint.com.br/uploads/produtos/banner-ou-faixa-gt-personalize-seu-tamanho-gt-impressao-em-lona-front-c-acabamento-banner-ou-faixa-gt-escolha-o-acabamento.jpg' },
                { name: 'Banner 2', path: 'https://www.pixelprint.com.br/uploads/produtos/banner-ou-faixa-gt-personalize-seu-tamanho-gt-impressao-em-lona-front-c-acabamento-banner-ou-faixa-gt-escolha-o-acabamento.jpg' },
                { name: 'Banner 3', path: 'https://www.pixelprint.com.br/uploads/produtos/banner-ou-faixa-gt-personalize-seu-tamanho-gt-impressao-em-lona-front-c-acabamento-banner-ou-faixa-gt-escolha-o-acabamento.jpg' },
            ]
        }
    },

    methods: {




    }
    
}
</script>