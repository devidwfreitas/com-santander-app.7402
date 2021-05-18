public enum nbc {
  APARELHO_NAO_HABILITADO, BLOQUEIO_CLIENTE, ID_CANCELADO, ID_NAO_HABILITADO;
  
  static {
    ID_CANCELADO = new nbc("ID_CANCELADO", 1);
    BLOQUEIO_CLIENTE = new nbc("BLOQUEIO_CLIENTE", 2);
    APARELHO_NAO_HABILITADO = new nbc("APARELHO_NAO_HABILITADO", 3);
    $VALUES = new nbc[] { ID_NAO_HABILITADO, ID_CANCELADO, BLOQUEIO_CLIENTE, APARELHO_NAO_HABILITADO };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */