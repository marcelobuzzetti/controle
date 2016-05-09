<?php

include '../include/config.inc.php';

session_start();
if (!isset($_SESSION['login']) || ($_SESSION['perfil'] != 1 && $_SESSION['perfil'] != 3)) {
    header('Location: ' . constant("HOST") . '/percurso');
} else {

    $existencia_combustivel = new CombustivelExistencia();
    $tabela_existencia = $existencia_combustivel->listarCombustiveisExistentes();

    $menus = new Menu();
    $menu = $menus->SelecionarMenu($_SESSION['perfil']);

    $smarty->assign('titulo', 'Existência de Combustível');
    $smarty->assign('tabela_existencia', $tabela_existencia);
    $smarty->assign('login', $_SESSION['login']);
    $smarty->display('./headers/header_datatables.tpl');
    $smarty->display($menu);
    $smarty->display('combustiveldisponivel.tpl');
    $smarty->display('./footer/footer_combustivel.tpl');
}
