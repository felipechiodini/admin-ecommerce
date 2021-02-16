<template>
    <div class="container-fluid">
        <top-bar></top-bar>
        <bread-crumb></bread-crumb>
    </div>
</template>

<script>
import TopBar from '../components/TopBar'
import breadCrumb from '../components/BreadCrumb'

export default {

    components: {
        TopBar,
        breadCrumb
    }
    
}
</script>