public enum gny {
  SECURY_PUBLIC_KEY,
  TOKEN_VALIDADE("security/v1/token-validate");
  
  private String endpoint;
  
  static {
    SECURY_PUBLIC_KEY = new gny("SECURY_PUBLIC_KEY", 1, "security/v1/key/public");
    $VALUES = new gny[] { TOKEN_VALIDADE, SECURY_PUBLIC_KEY };
  }
  
  gny(String paramString1) {
    this.endpoint = paramString1;
  }
  
  public String getEndpoint() {
    return this.endpoint;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gny.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */