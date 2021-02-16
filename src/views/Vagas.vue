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
            <div class="col-10">
                <div class="row d-flex justify-content-center" v-for="(item, key) in jobList" :key="key">
                    <div class="col-6 border border-dark rounded p-2 my-3">
                        <span><b>Nome: </b>{{ item.name }}</span>
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
            jobList: [
                { name: 'Marketing' },
                { name: 'Desenvolvedor' },
                { name: 'Produção' },
                { name: 'Costureira' },
            ]
        }
    }
    
}
</script>