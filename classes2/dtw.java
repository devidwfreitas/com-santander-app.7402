public class dtw {
  public static final cox<cpa> a;
  
  public static final dtn b;
  
  public static final dtr c;
  
  public static final duc d;
  
  private static final cpi<djh> e = new cpi();
  
  private static final cpd<djh, cpa> f = new dtx();
  
  static {
    a = new cox("LocationServices.API", f, e);
    b = new dhx();
    c = (dtr)new dil();
    d = new djp();
  }
  
  public static djh a(cpt paramcpt) {
    boolean bool2 = true;
    if (paramcpt != null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.b(bool1, "GoogleApiClient parameter is required.");
    djh djh = (djh)paramcpt.a((cpf)e);
    if (djh != null) {
      bool1 = bool2;
      csp.a(bool1, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
      return djh;
    } 
    boolean bool1 = false;
    csp.a(bool1, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
    return djh;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dtw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */