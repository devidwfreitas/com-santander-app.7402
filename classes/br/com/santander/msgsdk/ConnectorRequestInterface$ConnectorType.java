package br.com.santander.msgsdk;

public enum ConnectorRequestInterface$ConnectorType {
  DELETE,
  GET("GET"),
  POST("POST"),
  PUT("PUT");
  
  private String type;
  
  static {
    DELETE = new ConnectorRequestInterface$ConnectorType("DELETE", 3, "DELETE");
    $VALUES = new ConnectorRequestInterface$ConnectorType[] { GET, POST, PUT, DELETE };
  }
  
  ConnectorRequestInterface$ConnectorType(String paramString1) {
    this.type = paramString1;
  }
  
  public String getHttpMethod() {
    return this.type;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\ConnectorRequestInterface$ConnectorType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */