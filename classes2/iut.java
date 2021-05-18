public enum iut {
  HABILITACAO, HABILITACAO_ATM, OTIMIZACAO, PROCESSO_INTERROMPIDO, SINCRONIA;
  
  static {
    HABILITACAO_ATM = new iut("HABILITACAO_ATM", 4);
    $VALUES = new iut[] { HABILITACAO, OTIMIZACAO, PROCESSO_INTERROMPIDO, SINCRONIA, HABILITACAO_ATM };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iut.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */