import android.content.Context;
import android.os.Bundle;

final class byn extends bqj {
  private String a;
  
  byn(Context paramContext, String paramString1, String paramString2) {
    super(paramContext, 65542, 65543, 20141001, paramString1);
    this.a = paramString2;
  }
  
  protected void a(Bundle paramBundle) {
    paramBundle.putString("com.facebook.platform.extra.OBJECT_ID", this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\byn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */