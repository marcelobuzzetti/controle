<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar navbar-fixed-top">
            <ul id="nav" class="nav nav-pills">
                <li role="presentation" class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                        Cadastros <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="{$HOST}/motorista">Cadastrar Motorista</a></li>
                        <li><a href="{$HOST}/marca">Cadastrar Marca</a></li>
                        <li><a href="{$HOST}/modelo">Cadastrar Modelo</a></li>
                        <li><a href="{$HOST}/viatura">Cadastrar Viatura</a></li>
                        <li><a href="{$HOST}/combustivel">Cadastrar Combustível</a></li>
                        <li><a href="{$HOST}/tipocombustivel">Cadastrar Tipo de Combustível</a></li>
                        <li><a href="{$HOST}/recebimentocombustivel">Cadastrar Recebimento de Combustível</a></li>
                        <li><a href="{$HOST}/abastecimento">Cadastrar Abastecimento</a></li>
                        <li><a href="{$HOST}/relatorio" >Relatório por Data</a></li>
                    </ul>
                </li>
                <li><a>Olá {$login}</a></li>
                <li><a href="{$HOST}//logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
