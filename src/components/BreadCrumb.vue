<template>
    <div class="row my-2">
        <div class="col-auto p-1 mx-3 border rounded">
            <span v-for="(item, key) in breadCrumbList" :key="key">
                <a :href="item.path" >{{ item.name }}</a>
                <span class="mx-1">/</span>
            </span>
        </div>
    </div>
</template>

<script>
export default {
    data: () => {
        return {
            breadCrumbList: [
                { name: 'Home', path: '../' },
            ]    
        }
    }
    
}
</script>