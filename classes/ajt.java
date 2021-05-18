public enum ajt {
  CARTAO,
  EMPRESTIMO,
  FINANCIAMENTO,
  RENEGOCIACAO,
  USO_DE_LIMITE_DE_CONTA(22, agl.tipo_uso_de_limite_de_conta);
  
  int code;
  
  int name;
  
  static {
    CARTAO = new ajt("CARTAO", 1, 66, agl.tipo_cartao_de_credito);
    EMPRESTIMO = new ajt("EMPRESTIMO", 2, 32, agl.tipo_emprestimo);
    FINANCIAMENTO = new ajt("FINANCIAMENTO", 3, 86, agl.tipo_financiamento);
    RENEGOCIACAO = new ajt("RENEGOCIACAO", 4, 62, agl.tipo_renegociacao);
    $VALUES = new ajt[] { USO_DE_LIMITE_DE_CONTA, CARTAO, EMPRESTIMO, FINANCIAMENTO, RENEGOCIACAO };
  }
  
  ajt(int paramInt1, int paramInt2) {
    this.code = paramInt1;
    this.name = paramInt2;
  }
  
  public final int getCode() {
    return this.code;
  }
  
  public final int getName() {
    return this.name;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */