<template>
    <div class="row bg-warning">
        <div class="col-2">
            <img src="https://cdn0.iconfinder.com/data/icons/set-ui-app-android/32/8-512.png" height="40" alt="Foto">
            <span>{{ user.name }}</span>
        </div>
        <div class="col-auto py-2" v-for="(item, key) in itemsMenu" :key="key">
            <span @click="this.$router.push(item.path)">{{ item.name }}</span>
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
            ]
            
        }
    }
    
}
</script>

