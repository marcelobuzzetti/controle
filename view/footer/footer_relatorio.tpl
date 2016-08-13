<footer class="col-xs-12 col-sm-12 col-md-12"> <!-- Aqui e a area do footer -->
    <div class="container">
        <div class="row">
            <div id="social-icons">
                <a target="_blank" href="https://twitter.com/marcelobuzzetti" title="Twitter" ><img src="{$HOST}/libs/imagens/social_icons/twitter.png"></a>
                <a target="_blank" href="https://plus.google.com/u/0/118309322821221542062" title="G+" ><img src="{$HOST}/libs/imagens/social_icons/google.png"></a>
                <a target="_blank" href="https://br.linkedin.com/in/marcelo-buzzetti-08a4a185" title="Linkedin" ><img src="{$HOST}/libs/imagens/social_icons/linkedin.png"></a>
                <a target="_blank" href="https://github.com/marcelobuzzetti" title="Linkedin" ><img src="{$HOST}/libs/imagens/social_icons/GitHub-Mark.png"></a>
            </div> <!-- Aqui e a area das redes sociais -->
        </div>
    </div>
</footer>
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>&copy; Todos os direitos reservados.</p>
            </div>
        </div>
    </div>
</div>
<script src="{$HOST}/libs/js/jquery.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/script.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/bootstrap.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/jquery-ui.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/jquery.maskedinput.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/dataTables.responsive.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/responsive.bootstrap.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/dataTables.buttons.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/jszip.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/pdfmake.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/vfs_fonts.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/buttons.html5.min.js" type="text/javascript"></script>
<script src="{$HOST}/libs/js/dataTables.fixedHeader.min.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        var title = $('.titulo').text();
        $('.relatorio').DataTable({
            fixedHeader: {
                header: true,
                headerOffset: 50
            },
            "sPaginationType": "full_numbers",
            "iDisplayLength": 50,
            dom: 'Bfrtip',
            buttons: [
                'copyHtml5',
                'excelHtml5',
                {
                    extend: 'pdfHtml5',
                    orientation: 'landscape',
                    pageSize: 'A4',
                    /*exportOptions: {
                     columns: [1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
                     },*/
                    title: title,
                    download: 'open',
                    customize: function (doc) {
                        //pageMargins [left, top, right, bottom] 
                        doc.pageMargins = [20, 20, 20, 20];
                        doc.alignment = 'center';
                        doc.footer = title;
                    }
                }
            ],
            "oLanguage": {
                "sSearch": "",
                "sProcessing": "Aguarde enquanto os dados são carregados ...",
                "sLengthMenu": "Mostrar _MENU_ registros por pagina",
                "sZeroRecords": "Nenhum registro encontrado",
                "sInfoEmtpy": "Exibindo 0 a 0 de 0 registros",
                "sInfo": "Exibindo de _START_ a _END_ de _TOTAL_ registros",
                "sInfoFiltered": "",
                "oPaginate": {
                    "sFirst": "Primeiro",
                    "sPrevious": "Anterior",
                    "sNext": "Próximo",
                    "sLast": "Último"
                }
            }
        });
    });
</script>
</body>
</html>