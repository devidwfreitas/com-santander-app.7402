public enum gvu {
  COMPROVANTE_CAMBIO,
  COMPROVANTE_DEFAULT(1),
  COMPROVANTE_PAGAMENTO(1),
  COMPROVANTE_PREVIDENCIA(1);
  
  private final int valor;
  
  static {
    COMPROVANTE_CAMBIO = new gvu("COMPROVANTE_CAMBIO", 1, 2);
    COMPROVANTE_PAGAMENTO = new gvu("COMPROVANTE_PAGAMENTO", 2, 3);
    COMPROVANTE_PREVIDENCIA = new gvu("COMPROVANTE_PREVIDENCIA", 3, 4);
    $VALUES = new gvu[] { COMPROVANTE_DEFAULT, COMPROVANTE_CAMBIO, COMPROVANTE_PAGAMENTO, COMPROVANTE_PREVIDENCIA };
  }
  
  gvu(int paramInt1) {
    this.valor = paramInt1;
  }
  
  public int getValor() {
    return this.valor;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */