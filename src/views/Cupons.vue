<template>
    <div class="container-fluid">
        <top-bar></top-bar>
        <bread-crumb></bread-crumb>

        <div class="row d-flex justify-content-center">
            <div class="col-10">
                <div class="row mb-3">
                    <div class="col-12 ml-auto">
                        <button type="button" class="btn btn-dark" @click="showModalAdd()">Novo</button>
                    </div>
                </div>

                <div class="row border border-dark rounded mb-2 p-2" v-for="(item, key) in cuponsList" :key="key">
                    <div class="col-11 d-flex justify-content-around">
                        <span>
                            <b>Situação: </b>
                            <span v-if="item.active"><i class="fas fa-check-circle text-success"></i></span>
                            <span v-else><i  class="fas fa-times-circle text-danger"></i></span>
                        </span>
                        <span><b>Nome: </b>{{ item.name }}</span>
                        <span><b>Código: </b>{{ item.code }}</span>
                        <span><b>Desconto: </b>{{ item.discount + '%' }}</span>
                    </div>
                    <div class="col d-flex justify-content-around">
                        <span @click="editItem(item)"><i class="fas fa-edit pointer text-primary"></i></span>
                        <span @click="deleteItem(item)"><i class="fas fa-trash-alt text-danger pointer"></i></span>

                    </div>
                </div>
            </div>
        </div>


        <modal name="my-first-modal"></modal>

    </div>
</template>

<script>
import TopBar from '../components/TopBar'
import breadCrumb from '../components/BreadCrumb'

export default {

    components: {
        TopBar,
        breadCrumb,
    },

    data: () => {
        return {
            cuponsList: [
                { active: false, name: 'Verão 2021', code: 'VERAO2021', discount: 5 },
                { active: false, name: 'Verão 2021', code: 'VERAO2021', discount: 5 },
                { active: true, name: 'Verão 2021', code: 'VERAO2021', discount: 5 },
            ]
        }
    },


    methods: {

        editItem(item) {

            console.log(item)

        },

        deleteItem(item) {

            console.log(item)

        },


        showModalAdd() {

            this.$modal.show('my-first-modal');
        }


    }
    
}
</script>