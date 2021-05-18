public enum nap {
  AUTO, CNPJ, CPF;
  
  static {
    CNPJ = new nap("CNPJ", 1);
    AUTO = new nap("AUTO", 2);
    $VALUES = new nap[] { CPF, CNPJ, AUTO };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */