import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;

abstract class bxl implements bxz {
  protected String a;
  
  protected ccn b;
  
  protected FacebookRequestError c;
  
  private GraphRequest e;
  
  protected bxl(bww parambww, String paramString, ccn paramccn) {
    this.a = paramString;
    this.b = paramccn;
  }
  
  public FacebookRequestError a() {
    return this.c;
  }
  
  public void a(biu parambiu) {
    parambiu.a(this.e);
  }
  
  protected abstract void a(bix parambix);
  
  protected void a(FacebookRequestError paramFacebookRequestError) {
    bpu.a(bjb.REQUESTS, bww.f(), "Error running request for object '%s' with type '%s' : %s", new Object[] { this.a, this.b, paramFacebookRequestError });
  }
  
  protected void a(GraphRequest paramGraphRequest) {
    this.e = paramGraphRequest;
    paramGraphRequest.b(bhv.i());
    paramGraphRequest.a(new bxm(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bxl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */