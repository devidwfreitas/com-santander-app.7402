public enum gtd {
  CAMBIO_AG_CC_BENEFICIARIO, CAMBIO_INFO_ADICIONAIS, CAMBIO_SALDO_INSUFICIENTE, CAMBIO_SWIFT, CAMBIO_TIMER, CAMBIO_TIMER_TEMPO_ESGOTADO, CAMBIO_VALOR_INVALIDO, CAMBIO_VALOR_TOTAL_DEBITO, CAMBIO_VET;
  
  static {
    CAMBIO_INFO_ADICIONAIS = new gtd("CAMBIO_INFO_ADICIONAIS", 2);
    CAMBIO_VALOR_TOTAL_DEBITO = new gtd("CAMBIO_VALOR_TOTAL_DEBITO", 3);
    CAMBIO_VET = new gtd("CAMBIO_VET", 4);
    CAMBIO_TIMER = new gtd("CAMBIO_TIMER", 5);
    CAMBIO_TIMER_TEMPO_ESGOTADO = new gtd("CAMBIO_TIMER_TEMPO_ESGOTADO", 6);
    CAMBIO_VALOR_INVALIDO = new gtd("CAMBIO_VALOR_INVALIDO", 7);
    CAMBIO_SALDO_INSUFICIENTE = new gtd("CAMBIO_SALDO_INSUFICIENTE", 8);
    $VALUES = new gtd[] { CAMBIO_AG_CC_BENEFICIARIO, CAMBIO_SWIFT, CAMBIO_INFO_ADICIONAIS, CAMBIO_VALOR_TOTAL_DEBITO, CAMBIO_VET, CAMBIO_TIMER, CAMBIO_TIMER_TEMPO_ESGOTADO, CAMBIO_VALOR_INVALIDO, CAMBIO_SALDO_INSUFICIENTE };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gtd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */