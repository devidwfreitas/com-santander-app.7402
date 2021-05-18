import android.content.Context;
import org.json.JSONObject;

public class xy extends abw {
  private Context a;
  
  private ya b;
  
  public void a(Context paramContext, ace paramace, ya paramya) {
    this.a = paramContext;
    this.b = paramya;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(abq.TERMO_ACEITE.getEndpoint()).append("/").append(paramace.f().j()).append("/").append(paramace.f().u()).append("/").append(paramace.q()).append("?").append("gw-app-key=").append(abp.b().a().a().c());
    if (paramace.r().s() != null && !paramace.r().s().isEmpty())
      stringBuilder.append("&termType=").append(paramace.r().s()); 
    if (paramace.r().t() != null && !paramace.r().t().isEmpty())
      stringBuilder.append("&termValidityDate=").append(aat.g(paramace.r().t())); 
    try {
      abp.b().a().a((iq)a(stringBuilder.toString(), (JSONObject)null), (ih)new xz(this, paramya, paramContext));
      return;
    } catch (Exception exception) {
      this.b.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
  
  @Deprecated
  public void a(Context paramContext, ya paramya, String paramString) {
    this.a = paramContext;
    this.b = paramya;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\xy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */