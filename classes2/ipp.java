public enum ipp {
  BOTAO_PAGAR_CONTA_HOME, BOTAO_PAGAR_FATURA_HOME, BOTAO_PARCELAR_FATURA_HOME, CARTAO_DESBLOQUEIO_MENU_ITEM, CARTAO_MENU_ITEM, CARTOES_CARROSSEL_SELECTED, INVESTIMENTOS, POUPANCA_CARROSSEL_SELECTED, POUPANCA_MENU_ITEM;
  
  static {
    INVESTIMENTOS = new ipp("INVESTIMENTOS", 1);
    POUPANCA_CARROSSEL_SELECTED = new ipp("POUPANCA_CARROSSEL_SELECTED", 2);
    CARTOES_CARROSSEL_SELECTED = new ipp("CARTOES_CARROSSEL_SELECTED", 3);
    CARTAO_DESBLOQUEIO_MENU_ITEM = new ipp("CARTAO_DESBLOQUEIO_MENU_ITEM", 4);
    CARTAO_MENU_ITEM = new ipp("CARTAO_MENU_ITEM", 5);
    BOTAO_PAGAR_FATURA_HOME = new ipp("BOTAO_PAGAR_FATURA_HOME", 6);
    BOTAO_PARCELAR_FATURA_HOME = new ipp("BOTAO_PARCELAR_FATURA_HOME", 7);
    BOTAO_PAGAR_CONTA_HOME = new ipp("BOTAO_PAGAR_CONTA_HOME", 8);
    $VALUES = new ipp[] { POUPANCA_MENU_ITEM, INVESTIMENTOS, POUPANCA_CARROSSEL_SELECTED, CARTOES_CARROSSEL_SELECTED, CARTAO_DESBLOQUEIO_MENU_ITEM, CARTAO_MENU_ITEM, BOTAO_PAGAR_FATURA_HOME, BOTAO_PARCELAR_FATURA_HOME, BOTAO_PAGAR_CONTA_HOME };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ipp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */