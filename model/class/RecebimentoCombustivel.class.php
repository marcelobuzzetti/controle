<?php



class RecebimentoCombustivel extends Model {

    public function listarRecebimentoCombustiveis() {
        try {
            $stmt = $this->pdo->prepare("SELECT id_recibo_combustivel,combustiveis.descricao AS combustivel, tipos_combustiveis.descricao AS tipo,qnt, motivo, DATE_FORMAT(data,'%d/%m/%Y') AS data, hora
                                                    FROM tipos_combustiveis,combustiveis,recibos_combustiveis
                                                    WHERE recibos_combustiveis.id_combustivel =combustiveis.id_combustivel
                                                    AND recibos_combustiveis.id_tipo_combustivel =tipos_combustiveis.id_tipo_combustivel; ");
            $executa = $stmt->execute();

            if ($executa) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            } else {
                print("<script language=JavaScript>
                           alert('Não foi possível criar tabela.');
                           </script>");
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

}
