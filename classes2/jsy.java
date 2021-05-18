public enum jsy {
  CARTOES,
  CONTAS(0);
  
  private int id;
  
  static {
    CARTOES = new jsy("CARTOES", 1, 1);
    $VALUES = new jsy[] { CONTAS, CARTOES };
  }
  
  jsy(int paramInt1) {
    this.id = paramInt1;
  }
  
  public int getId() {
    return this.id;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */