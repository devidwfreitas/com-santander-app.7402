public enum kwl {
  AUDIO,
  JPG("JPG"),
  PDF("JPG"),
  PNG("PNG");
  
  private String nameFile;
  
  static {
    PDF = new kwl("PDF", 2, "PDF");
    AUDIO = new kwl("AUDIO", 3, "AUDIO");
    $VALUES = new kwl[] { JPG, PNG, PDF, AUDIO };
  }
  
  kwl(String paramString1) {
    this.nameFile = paramString1;
  }
  
  public String getNameFile() {
    return this.nameFile;
  }
  
  public void setNameFile(String paramString) {
    this.nameFile = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kwl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */