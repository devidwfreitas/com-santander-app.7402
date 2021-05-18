import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Base64;

class ifd implements gkw {
  ifd(ifc paramifc, boolean paramBoolean) {}
  
  public void a(Object paramObject) {
    boolean bool = false;
    paramObject = paramObject;
    String str = Base64.encodeToString(nai.c(miq.C().f().k()).getBytes(), 0).trim().replace("\n", "");
    Activity activity = ifc.a(this.b);
    ifc.a(this.b);
    SharedPreferences.Editor editor = activity.getSharedPreferences("fingerprintEnable", 0).edit();
    if (paramObject.a().equals("0") == this.a)
      bool = true; 
    editor.putBoolean(str, bool).commit();
    (new Handler()).postDelayed(new ife(this, (iez)paramObject), 1500L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ifd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */