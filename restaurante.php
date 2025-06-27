<?php
include "cabecalho.php";
?>
<?php
include "conexao.php";

$id = $_GET['id'] ?? 0;

$sql = "select * from restaurantes where id = " . $id;
$resultado = mysqli_query($conexao, $sql);

while ($linha = mysqli_fetch_assoc($resultado)) {
?>

    <div class="container text-center">
        <div class="col-3 mb-5">
            <div class="card" style="width: 18rem;">
                <img src="<?= $linha['foto']; ?>" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title"><?= $linha['nome_restaurante']; ?></h5>
                    <p class="card-text"><?= $linha['localizacao']; ?><br><?= $linha['categoria']; ?><br><span>⭐ <?= $linha['avaliacao']; ?>/5</span><br></p>

                    <a href="restaurante.php" class="btn btn-primary">Mais detalhes</a>
                </div>
            </div>
        </div>
    </div>

    <div class="container text-center">
    <div class="row align-items-end mx-5 mt-5">
      <div class="col">

        <img src="<?= $linha['foto']; ?> " style="width: 18rem;" class="img-fluid capa-filme">
      </div>
      <div class="col">
        <h2><?= $linha['nome_restaurante']; ?></h2>
        <p><?= $linha['localizacao']; ?></p>
        <p><strong>Categoria: </strong> <?= $linha['categoria']; ?> </p>
        <p><strong>Horarios:</strong> <?= $linha['horario_atendimento']; ?></p>
        <p>⭐ <?= $linha['avaliacao']; ?>/10</p>
      </div>
    </div>
    <img src="<?= $linha['foto_local']; ?> " style="width: 18rem;" class="img-fluid mt-5 mb-5">
<?php
}
mysqli_close($conexao);
?>
<?php include "rodape.php"; ?>