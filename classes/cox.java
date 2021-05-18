public final class cox<O extends coy> {
  private final cpd<?, O> a;
  
  private final cpk<?, O> b;
  
  private final cpi<?> c;
  
  private final cpl<?> d;
  
  private final String e;
  
  public <C extends cph> cox(String paramString, cpd<C, O> paramcpd, cpi<C> paramcpi) {
    csp.a(paramcpd, "Cannot construct an Api with a null ClientBuilder");
    csp.a(paramcpi, "Cannot construct an Api with a null ClientKey");
    this.e = paramString;
    this.a = paramcpd;
    this.b = null;
    this.c = paramcpi;
    this.d = null;
  }
  
  public cpg<?, O> a() {
    return this.a;
  }
  
  public cpd<?, O> b() {
    if (this.a != null) {
      boolean bool1 = true;
      csp.a(bool1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
      return this.a;
    } 
    boolean bool = false;
    csp.a(bool, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
    return this.a;
  }
  
  public cpf<?> c() {
    if (this.c != null)
      return this.c; 
    throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
  }
  
  public String d() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */