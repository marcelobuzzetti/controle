/*Remove atributo required em percurso*/
function preenche(a, b) {
    $("#" + b).removeAttr("required");
    $("#" + a).submit();
}
/*Remove atributo required em percurso*/

/*Coloca datepicker nas datas*/
$(function () {
    $('#data_inicio').datepicker({
        showButtonPanel: true,
        dateFormat: 'dd/mm/yy',
        dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
        dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
        dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
        monthNames: ['Janeiro', 'Fevereiro', 'Mar&ccedil;o', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
        monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
        currentText: 'Hoje',
        nextText: 'Pr&oacute;ximo',
        prevText: 'Anterior'
    });

    $('#data_fim').datepicker({
        showButtonPanel: true,
        dateFormat: 'dd/mm/yy',
        dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
        dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
        dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
        monthNames: ['Janeiro', 'Fevereiro', 'Mar&ccedil;o', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
        monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
        currentText: 'Hoje',
        nextText: 'Pr&oacute;ximo',
        prevText: 'Anterior'
    });
/*Coloca datepicker nas datas*/

/*Autocompleta o destino em percurso*/
    $("#destino").autocomplete({
        source: "../model/buscador.php",
        minLength: 3
    });
/*Autocompleta o destino em percurso*/

/*Completa o motorista e o odometro em percurso*/
    $('#viatura').change(function () {
        $('.Selecione').hide();
        $('#motorista').load('../model/listaMotoristas.php?viatura=' + $('#viatura').val());
        $('#odo_saida').load('../model/odometro.php?viatura=' + $('#viatura').val());
    });
/*Completa o motorista e o odometro em percurso*/

/*Completa modelos no cadastro de viatura*/
    $('#marca').change(function () {
        $('.Selecione').hide();
        $('#modelo').load('../model/listaModelos.php?marca=' + $('#marca').val());
    });
/*Completa modelos no cadastro de viatura*/

/*Verifica se a marca existe*/
    $('#marca').keyup(function () {
        $('#alerta').load('../model/verificaMarca.php?'+$.param({ marca: $('#marca').val() }) );
    });
/*Verifica se a marca existe*/

/*Verifica se a modelo existe*/
    $('#modelo').keyup(function () {
        $('#alerta').load('../model/verificaModelo.php?'+$.param({ marca_modelo: $('#marca_modelo').val(), modelo: $('#modelo').val()  }) );
    });
/*Verifica se a modelo existe*/

/*Modal dos motoristas*/
    $('#exampleModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('whatever')
        var sigla = button.data("sigla")
        var nome = button.data("nome")
        var categoria = button.data("categoria")
        var modal = $(this)
        modal.find('.modal-footer input').val(recipient)
        modal.find('.nome input').val(nome)
        modal.find('.sigla input').val(sigla)
        modal.find('.categoria input').val(categoria)
    });
});
/*Modal dos motoristas*/
