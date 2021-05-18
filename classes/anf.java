public enum anf {
  GREATER_THAN, GREATHER_THAN_OR_EQUAL_TO, INVALID_CNPJ, INVALID_CPF, INVALID_EMAIL, INVALID_PHONE, LESS_THAN, LESS_THAN_OR_EQUAL_TO, MAX_LENGTH, MIN_LENGTH, REQUIRED;
  
  static {
    MAX_LENGTH = new anf("MAX_LENGTH", 1);
    MIN_LENGTH = new anf("MIN_LENGTH", 2);
    GREATER_THAN = new anf("GREATER_THAN", 3);
    GREATHER_THAN_OR_EQUAL_TO = new anf("GREATHER_THAN_OR_EQUAL_TO", 4);
    LESS_THAN = new anf("LESS_THAN", 5);
    LESS_THAN_OR_EQUAL_TO = new anf("LESS_THAN_OR_EQUAL_TO", 6);
    INVALID_CPF = new anf("INVALID_CPF", 7);
    INVALID_CNPJ = new anf("INVALID_CNPJ", 8);
    INVALID_EMAIL = new anf("INVALID_EMAIL", 9);
    INVALID_PHONE = new anf("INVALID_PHONE", 10);
    $VALUES = new anf[] { 
        REQUIRED, MAX_LENGTH, MIN_LENGTH, GREATER_THAN, GREATHER_THAN_OR_EQUAL_TO, LESS_THAN, LESS_THAN_OR_EQUAL_TO, INVALID_CPF, INVALID_CNPJ, INVALID_EMAIL, 
        INVALID_PHONE };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */