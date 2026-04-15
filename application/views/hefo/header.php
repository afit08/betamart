<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="<?= base_url(); ?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<?= base_url(); ?>fontawesome/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="<?= base_url(); ?>vendor/bootstrap/css/style.css" rel="stylesheet" type="text/css">
    <title>menu</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top ">
        <div class="container">

            <a href="home">
                <h3><i class="fas fa-store text-dark mr-2"></i></h3>
            </a>
            <a class="navbar-brand font-weight-bold" href="">Betamart</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto mr-2">
                    <li class="nav-item active">
                        <?php if ($this->session->userdata('username')) { ?>
                            <a class="nav-link" href="face3"><i class="fas fa-home mr-2"></i>Home <span class="sr-only">(current)</span></a>
                        <?php } else { ?>
                            <a class="nav-link" href="auth/login"><i class="fas fa-home mr-2"></i>Home <span class="sr-only">(current)</span></a>
                        <?php } ?>
                    </li>
                    <li class="nav-item active">
                        <?php if ($this->session->userdata('username')) { ?>
                            <a class="nav-link" href="about"><i class="fas fa-address-card mr-2"></i>About <span class="sr-only">(current)</span></a>
                        <?php } else { ?>
                            <a class="nav-link" href="auth/login"><i class="fas fa-address-card mr-2"></i>About <span class="sr-only">(current)</span></a>
                        <?php } ?>
                    </li>
                    <li class="nav-item active">
                        <?php if ($this->session->userdata('username')) { ?>
                            <a class="nav-link" href="bantuan"><i class="far fa-question-circle mr-2"></i>Contact <span class="sr-only">(current)</span></a>
                        <?php } else { ?>
                            <a class="nav-link" href="auth/login"><i class="far fa-question-circle mr-2"></i>Contact <span class="sr-only">(current)</span></a>
                        <?php } ?>
                    </li>
                </ul>
                <div class="navbar text-dark">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <?php
                            $keranjang = '<i class="fas fa-shopping-cart text-dark">' . $this->cart->total_items() . 'items</i>'
                            ?>

                            <?php echo anchor('home/detail_keranjang', $keranjang) ?>
                        </li>
                    </ul>
                </div>
                <div class="navbar text-dark">
                    <ul class="nav navbar-nav navbar-right">
                        <?php if ($this->session->userdata('username')) { ?>
                            <?php echo $this->session->userdata('username') ?>
                            <li><?php echo anchor('auth/logout', '<i class="fas fa-sign-out-alt text-dark"></i>') ?></li>
                        <?php } else { ?>
                            <li><?php echo anchor('auth/login', '<i class="fas fa-sign-in-alt text-dark"></i>') ?></li>

                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </nav>