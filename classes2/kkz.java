public enum kkz {
  SEGUNDA_VIA_AGUA("1001"),
  SEGUNDA_VIA_CARTAO_CREDITO("1001"),
  SEGUNDA_VIA_CARTA_AMEX("1001"),
  SEGUNDA_VIA_GAS("1001"),
  SEGUNDA_VIA_LUZ("1002"),
  SEGUNDA_VIA_PGT_TITULOS("1002"),
  SEGUNDA_VIA_TEL_FIXO("1002"),
  SEGUNDA_VIA_TEL_POS("1002"),
  SEGUNDA_VIA_TEL_PRE("1002"),
  SEGUNDA_VIA_TITULOS_OUTROS("1002"),
  SEGUNDA_VIA_TRANSF_DOC("1002"),
  SEGUNDA_VIA_TRANSF_MESMA("1002"),
  SEGUNDA_VIA_TRANSF_TED("1002");
  
  private final String valor;
  
  static {
    SEGUNDA_VIA_GAS = new kkz("SEGUNDA_VIA_GAS", 2, "1003");
    SEGUNDA_VIA_TEL_FIXO = new kkz("SEGUNDA_VIA_TEL_FIXO", 3, "1004");
    SEGUNDA_VIA_TEL_POS = new kkz("SEGUNDA_VIA_TEL_POS", 4, "1005");
    SEGUNDA_VIA_TITULOS_OUTROS = new kkz("SEGUNDA_VIA_TITULOS_OUTROS", 5, "1006");
    SEGUNDA_VIA_PGT_TITULOS = new kkz("SEGUNDA_VIA_PGT_TITULOS", 6, "01");
    SEGUNDA_VIA_TEL_PRE = new kkz("SEGUNDA_VIA_TEL_PRE", 7, "7001");
    SEGUNDA_VIA_CARTA_AMEX = new kkz("SEGUNDA_VIA_CARTA_AMEX", 8, "6001");
    SEGUNDA_VIA_CARTAO_CREDITO = new kkz("SEGUNDA_VIA_CARTAO_CREDITO", 9, "05");
    SEGUNDA_VIA_TRANSF_MESMA = new kkz("SEGUNDA_VIA_TRANSF_MESMA", 10, "04");
    SEGUNDA_VIA_TRANSF_DOC = new kkz("SEGUNDA_VIA_TRANSF_DOC", 11, "03");
    SEGUNDA_VIA_TRANSF_TED = new kkz("SEGUNDA_VIA_TRANSF_TED", 12, "02");
    $VALUES = new kkz[] { 
        SEGUNDA_VIA_AGUA, SEGUNDA_VIA_LUZ, SEGUNDA_VIA_GAS, SEGUNDA_VIA_TEL_FIXO, SEGUNDA_VIA_TEL_POS, SEGUNDA_VIA_TITULOS_OUTROS, SEGUNDA_VIA_PGT_TITULOS, SEGUNDA_VIA_TEL_PRE, SEGUNDA_VIA_CARTA_AMEX, SEGUNDA_VIA_CARTAO_CREDITO, 
        SEGUNDA_VIA_TRANSF_MESMA, SEGUNDA_VIA_TRANSF_DOC, SEGUNDA_VIA_TRANSF_TED };
  }
  
  kkz(String paramString1) {
    this.valor = paramString1;
  }
  
  public String getValor() {
    return this.valor;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kkz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */