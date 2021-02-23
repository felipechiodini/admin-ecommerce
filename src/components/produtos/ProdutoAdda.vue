<template>
    <div class="row d-flex justify-content-center">
        <div class="col-10">
            <div class="row">
                <div class="col-7">
                    <div class="row">
                        <div class="col-3">
                            <label for="">Nome</label>
                            <input type="text" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3">
                            <label for="">Categoria</label>
                            <input type="text" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3">
                            <label for="">Cores</label>
                            <input type="text" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3">
                            <label for="">Tamanhos</label>
                            <input type="text" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3">
                            <label for="">Preço</label>
                            <input type="text" class="form-control form-control-sm">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3">
                            <label for="">Descrição</label>
                            <input type="text" class="form-control form-control-sm">
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="row">
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="formFile" class="form-label">Imagens</label>
                                <input class="form-control" type="file" id="formFile">
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</template>



<script>
export default {
    
    data: () => {
        return {

            product: {
                color: 'Preto'
            }

        }
    }



}
</script>


<style lang="scss" scoped>

.best-seller{
    background-color: #ff7733;
    color: #fff;
    font-weight: bold;
    font-size: 11px;
    padding: 3px;
    border-radius: 3px;
}

.old-price{
    text-decoration: line-through;
}

</style>