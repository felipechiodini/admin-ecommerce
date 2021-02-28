<template>
    <div class="row d-flex justify-content-center">
        <div class="col-10 border border-dark rounded p-2">
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
</template>

<script>
export default {
    metaInfo: {
        title: 'Benefícios',
    },

    data: () => {
        return {
            jobList: [
                {
                    rowOpened: false,
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
                {
                    rowOpened: false,
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
    },

    methods: {

        openAndCloseRow(item) {
            item.rowOpened = !item.rowOpened
            console.log(item.rowOpened)
        }


    }
    
}
</script>


<style lang="scss" scoped>

    .closed-box{
        max-height: 60px;
        overflow: hidden;
    }

</style>