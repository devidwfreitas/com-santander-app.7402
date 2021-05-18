public enum lyc {
  DVD,
  MICROWAVE,
  REFRIGERATOR,
  TV("Televisão"),
  WASHING("Televisão");
  
  private String mNameEquipment;
  
  static {
    DVD = new lyc("DVD", 1, "DVD - Blu Ray");
    MICROWAVE = new lyc("MICROWAVE", 2, "Microondas");
    REFRIGERATOR = new lyc("REFRIGERATOR", 3, "Geladeira");
    WASHING = new lyc("WASHING", 4, "Lavadora de roupas");
    $VALUES = new lyc[] { TV, DVD, MICROWAVE, REFRIGERATOR, WASHING };
  }
  
  lyc(String paramString1) {
    this.mNameEquipment = paramString1;
  }
  
  public String getNameEquipment() {
    return this.mNameEquipment;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */