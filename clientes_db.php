<?php

	class cliente {
	
		private static $conexao=null;
		public $nomeCliente;
		public $idadeCliente;
		public $telefoneCliente;
		public $enderecoCliente;
		public $categoriaCliente;
		
	   function __construct(){
	   	
	  		self::$conexao = mysqli_connect('localhost', 'root', 'root', 'avaliacao');
	   	
	   }
		
		public function getConexao(){
		
			if(self::$conexao==null)
				$conexao= new cliente();		
		
			return $conexao;
		}
		
		public function buscaCliente($nome) {
		
			$sql = mysqli_query(self::$conexao, "SELECT * FROM tbl_cliente WHERE cli_nomeCliente = '$nome'");		
			$consultaCliente = mysqli_fetch_row($sql);
			$sql = mysqli_query(self::$conexao, "SELECT cat_nomeCategoria FROM tbl_categoriaCliente WHERE cat_statusCategoria = '$consultaCliente[5]'");
			$consultaCategoria= mysqli_fetch_row($sql);
			
			$this->nomeCliente=$consultaCliente[1];
			$this->idadeCliente=$consultaCliente[2];
			$this->telefoneCliente=$consultaCliente[3];
			$this->enderecoCliente=$consultaCliente[4];
			$this->categoriaCliente=$consultaCategoria[0];
			
			return $this;
		}
	
	}
	
	$post=$_POST['post1'];
		
	$cliente = cliente::getConexao();
	$resultado=json_encode($cliente->buscaCliente($post));
	echo$resultado;
?>