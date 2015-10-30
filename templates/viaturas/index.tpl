        <fieldset>
            <legend>{$titulo}</legend>
            <table border=2px text-align='center' style='width: 40%'>
                <form action="../configs/executar.php" method="post">
                    <tr>
                        <td>Marca</td>
                        <td><label for="marca"><select class="form-control" id="marca" name="marca" required>
                                     <option value='' disabled selected>Selecione a Marca</option>
                                   {foreach $relacao_marcas as $marca}
                                    <option value={$marca.id_marca}>{$marca.descricao}</option>
                                {/foreach}
                                </select></label></td>
                    </tr>
                    <tr>
                        <td>Modelo</td>
                        <td><label for="modelo"><select class="form-control" id="modelo" name="modelo"  required>
                                    <option value='' disabled selected>Selecione o Modelo</option>
                                   {foreach $relacao_modelos as $modelo}
                                    <option value={$modelo.id_modelo}>{$modelo.descricao}</option>
                                   {/foreach}
                                </select></label></td>
                    </tr>
                    <tr>
                        <td>Placa</td>
                        <td><label for="placa"><input class="form-control" type="text" style='width: 150px' id="placa" name="placa" placeholder="Placa" required="required" value='{$placa}'/></label><br /></td>
                    </tr>
                    <tr>
                        <td>Odômetro</td>
                        <td><label for="odometro"><input class="form-control" type="number" style='width: 150px' id="odometro" name="odometro" placeholder="Odometro" required="required" value='{$odometro}' step="0.1"/></label></td>
                    </tr>
                    <tr>
                        <td>Situação</td>
                        <td><label for="situacao"><select class="form-control" name="situacao">
                                        <option value='' disabled selected>Selecione a Situação</option>
                                   {foreach $relacao_situacao as $situacao}
                                    <option value={$situacao.id_situacao}>{$situacao.disponibilidade}</option>
                                   {/foreach}
                                </select></label></td>
                    </tr>
                    <tr>
                        <td></td>
                    <input type='hidden' id='id' name='id' value='{$id_viatura}' />
                    <td><label><button type="submit" class="btn btn-primary" id="enviar" value="{$evento}" name="enviar">{$botao}</button></label></td>
                    </tr>
                </form>
            </table>
            <table border=2px style='width:100%'>
                 <caption>Viaturas Cadastradas</caption>
                    <tr>
                        <td>Ordem</td>
                        <td>Marca</td>
                        <td>Modelo</td>
                        <td>Placa</td>
                        <td>Odômetro</td>
                        <td>Capacidade do Tanque</td>
                        <td>Consumo Km/L</td>
                        <td>Capacidade(Pessoas)</td>
                        <td>Habilitação Necessária</td>
                        <td>Situação</td>
                        <td></td>
                        <td></td>
                        </tr>
                        {foreach $relacao_viaturas as $tbl name='viaturas'}
                        <tr>
                            <td>{$smarty.foreach.viaturas.iteration}</td>
                            <td>{$tbl.marca}</td>
                            <td>{$tbl.modelo}</td>
                            <td>{$tbl.placa}</td>
                            <td>{$tbl.odometro}</td>
                            <td>{$tbl.cap_tanque}</td>
                            <td>{$tbl.consumo_padrao}</td>
                            <td>{$tbl.cap_transp}</td>
                            ]<td>{$tbl.categoria}</td>
                            <td>{$tbl.disponibilidade}</td>
                                <form action='../configs/executar.php' method='post'>
                                    <input type='hidden' id='id' name='id' value='{$tbl.id_viatura}'/>
                                    <td><button class='btn btn-danger' type='submit' id='apagar' name='enviar' value='apagar_viatura'/>Apagar Viatura</form></td>
                                </form>
                            <form action='index.php' method='post'>
                                    <input type='hidden' id='id' name='id' value='{$tbl.id_viatura}' />
                                    <td><button class='btn btn-success' type='submit' id='apagar' name='enviar' value='atualiza_viatura'/>Atualizar Viatura</form></td>
                            </form>
                        </tr>
                        {/foreach}
            </table>
        </fieldset>
    </body>
</html>