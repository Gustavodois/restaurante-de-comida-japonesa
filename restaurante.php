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
        <div class="row align-items-end mx-5 mt-5">
            <div class="col">

                <img src="<?= $linha['foto']; ?> " style="width: 450px;" class="img-fluid capa-filme">
            </div>
            <div class="col">
                <h2><?= $linha['nome_restaurante']; ?> ⭐ <?= $linha['avaliacao']; ?>/5</h2>
                <p><?= $linha['localizacao']; ?></p>
                <p><strong>Categoria: </strong> <?= $linha['categoria']; ?> </p>
                <p><strong>Cardapio: </strong> <?= $linha['cardapio']; ?> </p>
                <p><strong>Entrega: </strong> <?= $linha['entrega']; ?> </p>
                <p><strong>Horarios: <br></strong> <?= str_replace("; ", "<br>", $linha['horario_atendimento']); ?></p>
                <p><strong>Telefone: </strong> <?= $linha['telefone']; ?> </p>
            </div>
        </div>
        <a href="https://www.google.com/maps?saddr&daddr=Av.+Carlos+Eduardo+de+Gasperi+Consoni,+691+Jardim+Bot%C3%A2nico,+Ribeir%C3%A3o+Preto,+Estado+de+S%C3%A3o+Paulo+14021-691+Brasil@-21.2115,-47.79451">
            <img src="<?= $linha['foto_local']; ?> " style="width: 18rem;" class="img-fluid mt-5 mb-5">
        </a>
    <?php
}
mysqli_close($conexao);
    ?>
    <?php include "rodape.php"; ?>