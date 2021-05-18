public enum kuq {
  ADDRESS,
  AUDIO,
  COVERAGE,
  DATE("DATE"),
  DATE_PERIOD("DATE"),
  EMAIL_PHONE("DATE"),
  EQUIPMENT_LIST("EQUIPMENT_LIST"),
  FINISH("EQUIPMENT_LIST"),
  PHOTO("EQUIPMENT_LIST"),
  SELECT("EQUIPMENT_LIST"),
  SLIDER_VALUE("SLIDER_VALUE"),
  SUMMARY("SLIDER_VALUE"),
  TEXT("SLIDER_VALUE"),
  TEXTAREA("SLIDER_VALUE"),
  VIDEO("SLIDER_VALUE");
  
  private String name;
  
  static {
    EMAIL_PHONE = new kuq("EMAIL_PHONE", 3, "EMAIL_PHONE");
    AUDIO = new kuq("AUDIO", 4, "AUDIO");
    VIDEO = new kuq("VIDEO", 5, "VIDEO");
    PHOTO = new kuq("PHOTO", 6, "VIDEO");
    SELECT = new kuq("SELECT", 7, "SELECT");
    TEXT = new kuq("TEXT", 8, "TEXT");
    TEXTAREA = new kuq("TEXTAREA", 9, "TEXTAREA");
    ADDRESS = new kuq("ADDRESS", 10, "ADDRESS");
    DATE_PERIOD = new kuq("DATE_PERIOD", 11, "DATE_PERIOD");
    COVERAGE = new kuq("COVERAGE", 12, "COVERAGE");
    FINISH = new kuq("FINISH", 13, "FINISH");
    SUMMARY = new kuq("SUMMARY", 14, "SUMMARY");
    $VALUES = new kuq[] { 
        DATE, EQUIPMENT_LIST, SLIDER_VALUE, EMAIL_PHONE, AUDIO, VIDEO, PHOTO, SELECT, TEXT, TEXTAREA, 
        ADDRESS, DATE_PERIOD, COVERAGE, FINISH, SUMMARY };
  }
  
  kuq(String paramString1) {
    this.name = paramString1;
  }
  
  public String getName() {
    return this.name;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kuq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */