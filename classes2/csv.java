import android.content.Context;
import android.content.res.Resources;

public class csv {
  private final Resources a;
  
  private final String b;
  
  public csv(Context paramContext) {
    csp.a(paramContext);
    this.a = paramContext.getResources();
    this.b = this.a.getResourcePackageName(cns.common_google_play_services_unknown_issue);
  }
  
  public String a(String paramString) {
    int i = this.a.getIdentifier(paramString, "string", this.b);
    return (i == 0) ? null : this.a.getString(i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */