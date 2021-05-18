public enum mwq {
  CNPJ, CPF;
  
  static {
    CNPJ = new mwq("CNPJ", 1);
    $VALUES = new mwq[] { CPF, CNPJ };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */