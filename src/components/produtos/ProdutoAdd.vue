<template>
    <div>



        <div class="row d-flex justify-content-center">
            <div class="col-8 border border-dark rounded">

                <div class="row bg-light border-bottom border-dark p-2">
                    <div class="col-12">
                        <span>Voltar à listaCasa, Móveis e DecoraçãoMóveis para CasaCadeiras, Sofás e BanquetasCadeiras para EscritórioÉ giratória Compartilhar</span>
                        <span>Casa</span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-auto border-right border-dark">
                        <div class="row border border-dark rounded my-2 mx-1" v-for="(item, key) in 5" :key="key">
                            <div class="col-12 p-2">
                                <img src="https://http2.mlstatic.com/D_NQ_NP_729219-MLB42125003952_062020-O.webp" height="50" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="col-7 d-flex justify-content-center">
                        <img src="https://http2.mlstatic.com/D_NQ_NP_729219-MLB42125003952_062020-O.webp" alt="">
                    </div>

                    <div class="col border border-dark rounded m-3">

                        <div class="row">
                            <div class="col-12">
                                <span>Novo | 9564 Vendidos</span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <h5>Cadeira De Escritório Giratória Com Regulagem Altura Begônia</h5>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-auto">
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                            <div class="col-auto">
                                349 Opiniões
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-auto">
                                <span class="best-seller">MAIS VENDIDO</span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-auto">
                                <h6 class="old-price">R$ 319</h6>
                                <h1 class="display-4">R$ 235</h1>
                            </div>
                        </div>

                        <div class="row mb-5">
                            <div class="col-auto">
                                <span>Cor: <b>{{ product.color }}</b></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-auto">
                                <span>Loja Ofical <a href="">Loja da Esquina</a></span>
                                <p>2653 Vendas</p>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12">
                                <button type="button" class="btn btn-primary w-100 mb-2">Comprar Agora</button>
                                <button type="button" class="btn btn-light w-100">Adicionar ao Carrinho</button>
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