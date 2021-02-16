<template>
    <div class="row mb-3 border-bottom bg-dark">
        <div class="col-12 p-2">
            <a :href="item.path" v-for="(item, key) in breadCrumbList" :key="key">{{ item.name + ' / ' }}</a>
        </div>
    </div>
</template>

<script>
export default {
    data: () => {
        return {
            breadCrumbList: [
                { name: 'Test', path: '../' },
                { name: 'Test', path: '../' },
                { name: 'Test', path: '../' },
                { name: 'Test', path: '../' },
            ]    
        }
    }
    
}
</script>