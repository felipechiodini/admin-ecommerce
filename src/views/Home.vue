<template>
    <div>
        
        <bread-crumb></bread-crumb>

        <div class="row d-flex justify-content-center">
            <div class="col-11">
                <div class="row d-flex justify-content-around">

                    <div class="col-5 border  mb-3 bg-white">
                        <h1 class="display-6">{{ 'Numeros de Usuários cadastrados: ' + qtdUsers }}</h1>
                    </div>

                    <div class="col-5 border  mb-3 bg-white">
                        <apexchart width="500" type="bar" :options="options" :series="series"></apexchart>
                    </div>
                    
                    <div class="col-5 border  mb-3 bg-white">
                        <apexchart width="500" type="bar" :options="options" :series="series"></apexchart>
                    </div>

                    <div class="col-5 border  mb-3 bg-white">
                        <apexchart width="500" type="bar" :options="options" :series="series"></apexchart>
                    </div>

                    <div class="col-5 border  mb-3 bg-white">
                        <apexchart width="500" type="bar" :options="options" :series="series"></apexchart>
                    </div>

                    <div class="col-5 border  mb-3 bg-white">
                        <apexchart width="500" type="bar" :options="options" :series="series"></apexchart>
                    </div>

                </div>
            </div>
        </div>



    </div>
</template>

<script>
import TopBar from '../components/TopBar'
import SideBar from '../components/SideBar'
import breadCrumb from '../components/BreadCrumb'

export default {
    metaInfo: {
      title: 'Home',
    },

    data: () => {
        return {
            options: {
                chart: {
                    id: 'vuechart-example'
                },
                xaxis: {
                    categories: [1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998]
                }
            },
            series: [
                { name: 'series-1', data: [30, 40, 45, 50, 49, 60, 70, 91] }
            ],




            qtdUsers: 56
        }
    },

    components: {
        TopBar,
        breadCrumb,
        SideBar
    }
}
</script>