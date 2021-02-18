<template>
    <div class="row my-3">
        <div class="col-auto p-1 mx-3">
            <a :href="item.path" v-for="(item, key) in breadCrumbList" :key="key">{{ ' / ' + item.name }}</a>
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