<template>
    <div class="row d-flex justify-content-center border-bottom bg-light border-dark py-1 pointer">
        <div class="col-auto border rounded mr-5 d-flex justify-content-center">
            <div class="col-auto">
                <div class="user-image" height="40" alt="Foto"></div>
                <span>{{ user.name }}</span>
            </div>
        </div>
        <div class="col-auto" v-for="(item, key) in itemsMenu" :key="key">
            <a class="text-dark" :href="item.path">{{ item.name }}</a>
        </div>
    </div>
</template>

<script>
export default {

    data: () => {
        return {
            user: {
                name: 'Felipe',
            },

            itemsMenu: [
                { name: 'Home', path: '/' },
                { name: 'Menu', path: '/menu' },
                { name: 'Produtos', path: '/produtos' },
                { name: 'Banners', path: '/banners' },
                { name: 'Cupons', path: '/cupons' },
                { name: 'Condições de Pagamento', path: '/pagamentos' },
                { name: 'Vagas', path: '/vagas' },
            ]
            
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

}

</style>