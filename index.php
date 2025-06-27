<?php
include "cabecalho.php";
include "banner.php";
?>
<div class="container text-center mt-4 mb-5">
    <h2 class="display-5">Restaurantes com as melhores avaliações</h2>
</div>
<div class="container">
    <div class="row mb-5">

        <?php

        include "conexao.php";

        $sql = "select * from restaurantes order by avaliacao desc limit 5";
        $resultado = mysqli_query($conexao, $sql);

        while ($linha = mysqli_fetch_assoc($resultado)) {

        ?>
            <div class="col-3 mb-5">
                <div class="card" style="width: 18rem;">
                    <img src="<?= $linha['foto']; ?>" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title"><?= $linha['nome_restaurante']; ?></h5>
                        <p class="card-text"><?= $linha['localizacao']; ?><br><?= $linha['categoria']; ?><br><span>⭐ <?= $linha['avaliacao']; ?>/5</span><br></p>
                        <a href="restaurante.php?id=<?= $linha['id'] ?>" class="btn btn-primary">Mais detalhes</a>
                    </div>
                </div>
            </div>
        <?php
        
        }
        mysqli_close($conexao);
        ?>
    </div>
</div>



<?php
include "rodape.php";
?>
</body>

</html>