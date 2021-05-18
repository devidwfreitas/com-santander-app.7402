public enum jql {
  GET_USUARIO_SN, RESETAR_SENHA, TROCAR_SENHA;
  
  static {
    RESETAR_SENHA = new jql("RESETAR_SENHA", 1);
    GET_USUARIO_SN = new jql("GET_USUARIO_SN", 2);
    $VALUES = new jql[] { TROCAR_SENHA, RESETAR_SENHA, GET_USUARIO_SN };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */