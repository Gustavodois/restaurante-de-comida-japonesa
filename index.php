<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurante de comida japonesa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
        <div class="container text-center">
            <div class="cabecalho">
                <img src="img/logo.png" class="logo" height="150">       
                <div class="nav-cabecalho">
                <h1 class="titulo"> Restaurante de comida japonesa </h1>  
                    <nav>
                        <a href="#">Home</a>
                        <a href="#">Filmes</a>
                        <a href="#">Notícias</a>
                        <a href="#">Contato</a>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <?php
    include "banner.php";
    ?>


    <footer class="rodape">
        <hr>
        <img src="img/logo.png">
        <small><?php echo date("Y"); ?></small>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>

</html>