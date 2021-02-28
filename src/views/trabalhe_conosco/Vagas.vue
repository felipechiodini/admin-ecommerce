<template>
    <div>
        <div class="row d-flex justify-content-center">
            <div class="col-10">

                <div class="row">
                    <div class="col-12 ml-auto border border-dark rounded p-2 mr-3">


                        <div class="row">
                            <div class="col-auto">
                                <h3>Lista de Vagas</h3>
                            </div>
                            <div class="col-auto ml-auto">
                                <button type="button" class="btn btn-sm btn-dark" @click="showModalAdd()">Nova Vaga</button>
                            </div>
                        </div>


                        <div class="row border rounded m-1 p-2" :class="{'closed-box': item.rowOpened}" v-for="(item, key) in jobList" :key="key">
                            <div class="col-11">
                                <div class="col-12">
                                    <span v-if="item.active"><b>Ativo: </b><i class="fas fa-check-circle text-success"></i></span>
                                    <span v-else><b>Ativo: </b><i class="fas fa-times-circle text-danger"></i></span>
                                </div>

                                <div class="col-12">
                                    <span><b>Nome: </b>{{ item.name }}</span>
                                </div>

                                <div class="col-12">
                                    <span><b>Cidade: </b>{{ item.address.city }}</span>
                                </div>
                                <div class="col-12">
                                    <span><b>Área: </b>{{ item.role }}</span>
                                </div>
                                <div class="col-12">
                                    <span><b>Pré-Requisitos: </b>{{ item.requirements }}</span>
                                </div>
                                <div class="col-12">
                                    <span><b>Atividades: </b>{{ item.requirements }}</span>
                                </div>
                                <div class="col-12">
                                    <span><b>Diferencial: </b>{{ item.differential }}</span>
                                </div>
                            </div>
                            <div class="col-1 ml-auto d-flex justify-content-around">
                                <span @click="showModalEdit(item)"><i class="fas fa-edit pointer text-primary"></i></span>
                                <span @click="showModalDelete(item)"><i class="fas fa-trash-alt text-danger pointer"></i></span>
                                <span @click="openAndCloseRow(item)"><i class="pointer" :class="item.rowOpened ? 'fas fa-chevron-left' : 'fas fa-chevron-down'"></i></span>
                            </div>
                        </div>




                    </div>
                </div>
            </div>
        </div>


        <modal-add ref="modal-add"></modal-add>
    </div>
</template>

<script>
import axios from 'axios'

import ModalAdd from '../../components/jobs/ModalAdd'

export default {
    metaInfo: {
        title: 'Vagas',
    },

    components: {
        ModalAdd
    },

    data: () => {
        return {
            jobList: [],
            loading: false
        }
    },

    mounted() {
        this.reloadList()
    },

    methods: {

        reloadList() {
            this.loading = true
            const vm = this
            axios({
                method: 'GET',
                url: 'http://localhost:3000/job',
            }).then((response) => {
                vm.loading = false
                this.jobList = response.data
            })
        },

        openAndCloseRow(item) {
            item.rowOpened = !item.rowOpened
            console.log(item.rowOpened)
        },



        showModalAdd() {

            this.$refs['modal-add'].changeShowModal()
            

        },


    }
    
}
</script>


<style lang="scss" scoped>

    .closed-box{
        max-height: 60px;
        overflow: hidden;
    }

</style>