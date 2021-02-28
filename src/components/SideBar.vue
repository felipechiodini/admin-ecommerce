<template>
    <div class="row border-right border-dark h-100">
        <div class="col-auto m-2">
            <div class="row mb-3">
                <button type="button" class="btn btn-sm btn-outline-dark ml-auto" @click="closeAndOpen()">
                    <span><i class="fas fa-bars"></i></span>
                </button>
            </div>

            <div class="mb-1 border border-dark rounded p-1" :class="{'hidden': closed, 'row': !closed }">
                <div class="col-auto">
                    <div class="user-image"></div>
                </div>
                <div class="col-auto d-flex align-items-center">
                    <span>{{ user.name }}</span>
                </div>
            </div>

            <div class="mb-1" :class="{'hidden': closed, 'row': !closed }" v-for="(menu, key) in itemList" :key="key">
                <div class="col-12 p-0">
                    <b-dropdown dropright size="sm" :text="menu.name" variant="white" class="w-100 border border-dark rounded" v-if="menu.subMenu">
                        <b-dropdown-item class="border border-dark rounded" :href="subMenu.path" v-for="(subMenu, key) in menu.subMenu" :key="key">{{ subMenu.name }}</b-dropdown-item>
                    </b-dropdown>

                    <button type="button" class="btn btn-sm btn-outline-dark ml-auto w-100" @click="$router.push(menu.path)" v-else>{{ menu.name }}</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { BDropdown } from 'bootstrap-vue'

export default {
    components: {
        BDropdown
    },

    data: () => {
        return {
            closed: true,

            user: {
                name: 'Felipe',
                lastName: 'Chiodini bona'
            },


            itemList: [
                { name: 'Home', path: '/'},
                { name: 'Menus', path: '/menus' },
                { name: 'Produtos', path: '/produtos' },
                { name: 'Banners', path: '/banners' },
                { name: 'Trabalhe Conosco', path: '/trabalhe_conosco' },
                { name: 'Cupons', path: '/cupons', subMenu: [
                        { name: 'Vagas', path: '/vagas' },
                    ]
                },
                { name: 'Condições de Pagamento', path: '/pagamentos' },
            ],
        }
    },

    methods: {
        closeAndOpen() {
            this.closed = !this.closed
        }
    }

    
}
</script>

<style lang="scss" scoped>

    .hidden{
        display: none !important;
    }

    .user-image {
        height: 50px;
        width: 50px;
        border-radius: 100px;
        background-image: url('https://fotos.jornaldocarro.estadao.com.br/wp-content/uploads/2020/05/21094745/P90359891_highRes_the-all-new-bmw-330e-1160x773.jpg');
        background-size: cover;
        border: 1px solid black;
    }

</style>
