public enum ach {
  USER_JOVEM_PROFISSIONAL,
  USER_PRIVATE,
  USER_SANTANDER("CL"),
  USER_SELECT("CL"),
  USER_UNIVERSIDADES("CL"),
  USER_UNIVERSIDADES_JOVEM_PROFISSIONAL("CL"),
  USER_VAN_GOGH("VG"),
  USER_VAN_GOGH_UNIVERSIDADES("VG");
  
  private final String userSegment;
  
  static {
    USER_SELECT = new ach("USER_SELECT", 2, "SE");
    USER_UNIVERSIDADES = new ach("USER_UNIVERSIDADES", 3, "UN");
    USER_VAN_GOGH_UNIVERSIDADES = new ach("USER_VAN_GOGH_UNIVERSIDADES", 4, "VGUN");
    USER_JOVEM_PROFISSIONAL = new ach("USER_JOVEM_PROFISSIONAL", 5, "JP");
    USER_UNIVERSIDADES_JOVEM_PROFISSIONAL = new ach("USER_UNIVERSIDADES_JOVEM_PROFISSIONAL", 6, "UNJP");
    USER_PRIVATE = new ach("USER_PRIVATE", 7, "PR");
    $VALUES = new ach[] { USER_SANTANDER, USER_VAN_GOGH, USER_SELECT, USER_UNIVERSIDADES, USER_VAN_GOGH_UNIVERSIDADES, USER_JOVEM_PROFISSIONAL, USER_UNIVERSIDADES_JOVEM_PROFISSIONAL, USER_PRIVATE };
  }
  
  ach(String paramString1) {
    this.userSegment = paramString1;
  }
  
  public int getValue() {
    return ordinal() + 1;
  }
  
  public String toString() {
    return this.userSegment;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ach.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */