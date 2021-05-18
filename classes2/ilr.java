public enum ilr {
  GEO_LOCALTION("geolocation/v1/location"),
  PUBLIC_KEY("geolocation/v1/key/public");
  
  private String endpoint;
  
  static {
    $VALUES = new ilr[] { GEO_LOCALTION, PUBLIC_KEY };
  }
  
  ilr(String paramString1) {
    this.endpoint = paramString1;
  }
  
  public String getEndpoint() {
    return this.endpoint;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */