public enum kqn {
  ACIDENTES_PESSOAIS,
  DEFAULT,
  VAN_GOGH,
  VIDA,
  VIDA_HOMEM,
  VIDA_MULHER,
  VIDA_SELECT("571740");
  
  private String code;
  
  static {
    VAN_GOGH = new kqn("VAN_GOGH", 1, "571676");
    VIDA_HOMEM = new kqn("VIDA_HOMEM", 2, "571814");
    VIDA_MULHER = new kqn("VIDA_MULHER", 3, "571815");
    VIDA = new kqn("VIDA", 4, "");
    ACIDENTES_PESSOAIS = new kqn("ACIDENTES_PESSOAIS", 5, "571813");
    DEFAULT = new kqn("DEFAULT", 6, "");
    $VALUES = new kqn[] { VIDA_SELECT, VAN_GOGH, VIDA_HOMEM, VIDA_MULHER, VIDA, ACIDENTES_PESSOAIS, DEFAULT };
  }
  
  kqn(String paramString1) {
    this.code = paramString1;
  }
  
  public String getCode() {
    return this.code;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kqn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */