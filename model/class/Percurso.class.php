<?php



class Percurso extends Model {

    public function listarPercursosFechadas() {
        try {
            $stmt = $this->pdo->prepare("SELECT id_percurso, marcas.descricao AS marca, modelos.descricao AS  modelo, placa, motoristas.apelido, nome_destino, odo_saida, IFNULL(acompanhante,'Sem Acompanhante') AS acompanhante, DATE_FORMAT(data_saida,'%d/%m/%Y') as data_saida, hora_saida, odo_retorno, DATE_FORMAT(data_retorno,'%d/%m/%Y') AS data_retorno, hora_retorno
                                                    FROM percursos, viaturas, motoristas, marcas, modelos, destinos
                                                    WHERE data_retorno IS NOT NULL 
                                                    AND percursos.id_motorista = motoristas.id_motorista
                                                    AND percursos.id_viatura = viaturas.id_viatura
                                                    AND viaturas.id_marca = marcas.id_marca
                                                    AND viaturas.id_modelo = modelos.id_modelo
                                                    AND percursos.id_destino = destinos.id_destino
                                                    ORDER BY id_percurso DESC
                                                    LIMIT 10");
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
