public enum im {
  DELETE,
  GET("GET"),
  POST("POST"),
  PUT("POST");
  
  private final String httpType;
  
  static {
    DELETE = new im("DELETE", 2, "DELETE");
    PUT = new im("PUT", 3, "PUT");
    $VALUES = new im[] { GET, POST, DELETE, PUT };
  }
  
  im(String paramString1) {
    this.httpType = paramString1;
  }
  
  public String toString() {
    return this.httpType;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\im.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */