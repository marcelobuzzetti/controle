<?php

include $_SERVER['DOCUMENT_ROOT'] . '/include/config.inc.php';



if (isset($_SESSION['login']) == FALSE || ($_SESSION['perfil'] != 1 && $_SESSION['perfil'] != 4)) {
    header('Location: /percurso');
} else {

    $combustiveis = new Combustivel();
    $relacao_combustiveis = $combustiveis->listarCombustiveis();

    $tipos_combustiveis = new TipoCombustivel();
    $relacao_tipo_combustiveis = $tipos_combustiveis->listarTiposCombustiveis();

    $rcb_combustiveis = new RecebimentoCombustivel();
    $relacao_rcb_combustiveis = $rcb_combustiveis->listarRecebimentoCombustiveis();

    $menus = new Menu();
    $menu = $menus->SelecionarMenu($_SESSION['perfil']);


    if (!isset($_POST['id'])) {

        $smarty->assign('id_rcb_comb', '');
        $smarty->assign('combustivel', '');
        $smarty->assign('tipo_combustivel', '');
        $smarty->assign('qnt', '');
        $smarty->assign('motivo', '');
        $smarty->assign('titulo', 'Cadastro de Recebimento de Combustíveis');
        $smarty->assign('botao', 'Cadastrar');
        $smarty->assign('evento', 'rcb_comb');
        $smarty->assign('relacao_combustiveis', $relacao_combustiveis);
        $smarty->assign('relacao_tipo_combustiveis', $relacao_tipo_combustiveis);
        $smarty->assign('relacao_rcb_combustiveis', $relacao_rcb_combustiveis);
        $smarty->assign('login', $_SESSION['login']);
        $smarty->display('./headers/header_datatables.tpl');
        $smarty->display($menu);
        $smarty->display('recebimentocombustivel.tpl');
        $smarty->display('./footer/footer_datatables.tpl');
    } else {
        $id = $_POST['id'];
        try {
            $stmt = $pdo->prepare("SELECT * FROM recibos_combustiveis WHERE id_recibo_combustivel = ?");
            $stmt->bindParam(1, $id, PDO::PARAM_INT);
            $executa = $stmt->execute();

            if ($executa) {
                $dados_rcb_combustiveis = $stmt->fetch(PDO::FETCH_OBJ);
                $id_rcb_comb = $dados_rcb_combustiveis->id_recibo_combustivel;
                $combustivel = $dados_rcb_combustiveis->id_combustivel;
                $tipo_combustivel = $dados_rcb_combustiveis->id_tipo_combustivel;
                $qnt = $dados_rcb_combustiveis->qnt;
                $motivo = $dados_rcb_combustiveis->motivo;
            } else {
                print("<script language=JavaScript>
                               alert('Não foi possível criar tabela.');
                               </script>");
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }

        $smarty->assign('titulo', 'Atualização de Recebimento de Combustíveis');
        $smarty->assign('botao', 'Atualizar');
        $smarty->assign('evento', 'atualizar_rcb_comb');
        $smarty->assign('id_rcb_comb', $id_rcb_comb);
        $smarty->assign('combustivel', $combustivel);
        $smarty->assign('tipo_combustivel', $tipo_combustivel);
        $smarty->assign('qnt', $qnt);
        $smarty->assign('motivo', $motivo);
        $smarty->assign('relacao_combustiveis', $relacao_combustiveis);
        $smarty->assign('relacao_tipo_combustiveis', $relacao_tipo_combustiveis);
        $smarty->assign('relacao_rcb_combustiveis', $relacao_rcb_combustiveis);
        $smarty->assign('login', $_SESSION['login']);
        $smarty->display('./headers/header_datatables.tpl');
        $smarty->display($menu);
        $smarty->display('recebimentocombustivel.tpl');
        $smarty->display('./footer/footer_datatables.tpl');
    }
}