public enum ggw {
  PERDA,
  ROUBO,
  SELECIONE_MOTIVO(0, "Selecione um motivo");
  
  private int id;
  
  private String label;
  
  static {
    PERDA = new ggw("PERDA", 1, 23, "Perda");
    ROUBO = new ggw("ROUBO", 2, 25, "Roubo");
    $VALUES = new ggw[] { SELECIONE_MOTIVO, PERDA, ROUBO };
  }
  
  ggw(int paramInt1, String paramString1) {
    this.id = paramInt1;
    this.label = paramString1;
  }
  
  public int getId() {
    return this.id;
  }
  
  public String getLabel() {
    return this.label;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ggw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */