import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public final class eid {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  public eid() {}
  
  public eid(eib parameib) {
    this.b = eib.a(parameib);
    this.a = eib.b(parameib);
    this.c = eib.c(parameib);
    this.d = eib.d(parameib);
    this.e = eib.e(parameib);
    this.f = eib.f(parameib);
  }
  
  public eib a() {
    return new eib(this.b, this.a, this.c, this.d, this.e, this.f, null);
  }
  
  public eid a(@NonNull String paramString) {
    this.a = csp.a(paramString, "ApiKey must be set.");
    return this;
  }
  
  public eid b(@NonNull String paramString) {
    this.b = csp.a(paramString, "ApplicationId must be set.");
    return this;
  }
  
  public eid c(@Nullable String paramString) {
    this.c = paramString;
    return this;
  }
  
  public eid d(@Nullable String paramString) {
    this.e = paramString;
    return this;
  }
  
  public eid e(@Nullable String paramString) {
    this.f = paramString;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eid.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */