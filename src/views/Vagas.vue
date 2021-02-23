<template>
    <div class="container-fluid">
        <top-bar></top-bar>
        <bread-crumb></bread-crumb>



        <div class="row d-flex justify-content-center">
            <div class="col-10">
                <div class="row mb-3">
                    <div class="col-12">
                        <button type="button" class="btn btn-dark" @click="showModalAdd()">Novo</button>
                    </div>
                </div>
                <div class="row">

                    <div class="col ml-auto border border-dark rounded p-2 mr-3">
                        <div class="row">
                            <div class="col-auto">
                                <h3>Lista de Vagas</h3>
                            </div>
                            <div class="col-auto ml-auto">
                                <button type="button" class="btn btn-sm btn-dark" @click="showModalAdd()">Nova Vaga</button>
                            </div>
                        </div>
                        <div class="row border rounded m-1 p-2" v-for="(item, key) in jobList" :key="key">

                            <div class="col-11">

                                <div class="col-12 text-nowrap text-truncate">
                                    <span v-if="item.active"><b>Ativo: </b><i class="fas fa-check-circle text-success"></i></span>
                                    <span v-else><b>Ativo: </b><i class="fas fa-times-circle text-danger"></i></span>
                                </div>

                                <div class="col-12 text-nowrap text-truncate">
                                    <span><b>Nome: </b>{{ item.name }}</span>
                                </div>

                                <div class="col-12 text-nowrap text-truncate">
                                    <span><b>Cidade: </b>{{ item.address.city }}</span>
                                </div>

                                <div class="col-12 text-nowrap text-truncate">
                                    <span><b>Área: </b>{{ item.role }}</span>
                                </div>

                                <div class="col-12 text-nowrap text-truncate">
                                    <span><b>Pré-Requisitos: </b>{{ item.requirements }}</span>
                                </div>

                                <div class="col-12 text-nowrap text-truncate">
                                    <span><b>Atividades: </b>{{ item.requirements }}</span>
                                </div>

                                <div class="col-12 text-nowrap text-truncate">
                                    <span><b>Diferencial: </b>{{ item.differential }}</span>
                                </div>


                            </div>

                            <div class="col-1 ml-auto d-flex justify-content-around">

                                 <!-- <div class="col-12 ml-auto d-flex justify-content-around"> -->
                                    <span @click="showModalEdit(item)"><i class="fas fa-edit pointer text-primary"></i></span>
                                    <span @click="showModalDelete(item)"><i class="fas fa-trash-alt text-danger pointer"></i></span>
                                <!-- </div> -->

                            </div>

                           
                           
                        </div>
                    </div>

                    <div class="col-4 ml-auto border border-dark rounded p-2">
                        <div class="row">
                            <div class="col-auto">
                                <h3>Lista de Benefícios</h3>
                            </div>
                            <div class="col-auto ml-auto">
                                <button type="button" class="btn btn-sm btn-dark" @click="showModalAdd()">Novo Benefício</button>
                            </div>
                        </div>
                        <div class="row border rounded m-2 p-2" v-for="(item, key) in benefitsList" :key="key">
                            <div class="col">
                                <li>{{ item.name }}</li>
                            </div>
                            <div class="col-2 ml-auto d-flex justify-content-around">
                                <span @click="showModalEdit(item)"><i class="fas fa-edit pointer text-primary"></i></span>
                                <span @click="showModalDelete(item)"><i class="fas fa-trash-alt text-danger pointer"></i></span>
                            </div>
                        </div>
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
                {
                    active: true,
                    name: 'Marketing',
                    address: {
                        street: 'Clécio Stringari',
                        number: 45,
                        city: 'Jaraguá do Sul',
                        state: 'SC',
                    },
                    role: 'Desenvolvimento',
                    requirements: 'Cursando ou concluído superior em Moda ou Administração; Experiência na área; Conhecimento no pacote Office (Word / Excel); Domínio do processo de desenvolvimento; Facilidade para trabalhar em equipe; Entender de Processos de Confecção, Engenharia e Desenvolvimento.',
                    activities: 'Programação das peças foto; Gestão da controladoria das peças foto; Requisição de materiais; Compilar dados para relatórios indicadores; Agendamento com modelo de prova; Compilar dados de parametrizadores de coleção;',
                    differential: 'Perfil Pró-ativo (a); Dinâmico (a).',
                },
            ],

            benefitsList: [
                { id: 1, name: "Cartão ÚtilCard" }
            ]
        }
    }
    
}
</script>