<template>
    <div>

        <top-bar></top-bar>

        <bread-crumb></bread-crumb>

        <router-view></router-view>

    </div>
</template>

<script>
export default {
    metaInfo: {
        title: 'Trabalhe Conosco',
    },

    data: () => {
        return {
            menuList: [
                { name: 'Vagas', path: '/trabalhe_conosco/vagas' },
                { name: 'Setores', path: '/trabalhe_conosco/setores' },
                { name: 'Benefícios ', path: '/trabalhe_conosco/beneficios' },
            ]
        }
    },

}
</script>