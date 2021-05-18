import android.content.Context;
import android.os.Bundle;

final class bsy extends bqj {
  private final String a;
  
  bsy(Context paramContext, String paramString1, String paramString2) {
    super(paramContext, 65546, 65547, 20170411, paramString1);
    this.a = paramString2;
  }
  
  protected void a(Bundle paramBundle) {
    paramBundle.putString("com.facebook.platform.extra.LOGGER_REF", this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */