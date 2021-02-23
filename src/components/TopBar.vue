<template>
    <div class="row d-flex justify-content-center border-bottom border-dark bg-light py-2">

        <div class="col-auto border border-dark rounded mr-5 d-flex justify-content-center p-1 pointer">
            <div class="col-auto">
                <div class="user-image"></div>
            </div>
            <div class="col-auto d-flex align-items-center">
                <span>{{ user.name }}</span>
            </div>
        </div>

        <div class="col-auto d-flex align-items-end" v-for="(item, key) in itemsMenu" :key="key">
            <a class="links-topbar" :href="item.path">{{ item.name }}</a>
        </div>

        <div class="col-auto d-flex align-items-end">
            <a class="links-topbar" @click="logout()">Sair</a>
        </div>

    </div>
</template>

<script>
import axios from 'axios'
export default {

    data: () => {
        return {
            user: {
                name: 'Felipe',
            },

            itemsMenu: [
                { name: 'Home', path: '/' },
                { name: 'Menus', path: '/menus' },
                { name: 'Produtos', path: '/produtos' },
                { name: 'Banners', path: '/banners' },
                { name: 'Cupons', path: '/cupons' },
                { name: 'Condições de Pagamento', path: '/pagamentos' },
                { name: 'Vagas', path: '/vagas' },
            ]
        }
    },

    methods: {

        logout() {
            axios({
                method: 'POST',
                url: 'http://localhost:3000/logout',
            }).then((response) => {

                alert('saiu')
            })
        }


    }
    
}
</script>

<style lang="scss" scoped>

.user-image {
    height: 50px;
    width: 50px;
    border-radius: 100px;
    background-image: url('https://fotos.jornaldocarro.estadao.com.br/wp-content/uploads/2020/05/21094745/P90359891_highRes_the-all-new-bmw-330e-1160x773.jpg');
    background-size: cover;
    border: 1px solid black;

}

.links-topbar{
    color: black;
    font-size: 20px;
}

</style>