import android.content.Context;
import android.support.annotation.NonNull;

public class aqy {
  private Context a;
  
  private arb b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private apa f;
  
  private arv g;
  
  private aqw h;
  
  private Integer i;
  
  private Integer j;
  
  private boolean k;
  
  public aqx a() {
    if (this.b == null)
      throw new aqc("Forneça uma implementação para ChatSessionToken"); 
    if (this.d == null)
      throw new aqc("O parametro appNumber nao pode ser nulo"); 
    if (this.c == null)
      throw new aqc("O parametro Reason nao pode ser nulo"); 
    if (this.f == null)
      throw new aqc("O parametro ChaTracking nao pode ser nulo"); 
    if (this.g == null)
      throw new aqc("O parametro DlCrypto nao pode ser nulo"); 
    if (this.a == null)
      throw new aqc("O parametro Context nao pode ser nulo"); 
    if (this.e == null)
      throw new aqc("O parametro Environment nao pode ser nulo"); 
    if (this.h == null)
      throw new aqc("O parametro ChatComponentCallback nao pode ser nulo"); 
    return new aqx(this);
  }
  
  public aqy a(@NonNull Context paramContext) {
    this.a = paramContext;
    return this;
  }
  
  public aqy a(@NonNull apa paramapa) {
    this.f = paramapa;
    return this;
  }
  
  public aqy a(@NonNull aqw paramaqw) {
    this.h = paramaqw;
    return this;
  }
  
  public aqy a(@NonNull arb paramarb) {
    this.b = paramarb;
    return this;
  }
  
  public aqy a(@NonNull arv paramarv) {
    this.g = paramarv;
    return this;
  }
  
  public aqy a(Integer paramInteger) {
    this.i = paramInteger;
    return this;
  }
  
  public aqy a(@NonNull String paramString) {
    this.c = paramString;
    return this;
  }
  
  public aqy a(boolean paramBoolean) {
    this.k = paramBoolean;
    return this;
  }
  
  public aqy b(Integer paramInteger) {
    this.j = paramInteger;
    return this;
  }
  
  public aqy b(@NonNull String paramString) {
    this.d = paramString;
    return this;
  }
  
  public aqy c(@NonNull String paramString) {
    this.e = paramString;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */