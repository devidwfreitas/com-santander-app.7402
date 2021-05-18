import android.text.TextUtils;
import java.util.EventListener;

public class nif extends nib<njm> {
  private final String a;
  
  private final boolean b;
  
  public nif(String paramString, boolean paramBoolean) {
    super(njm.class);
    String str = paramString;
    if (TextUtils.isEmpty(paramString))
      str = null; 
    this.a = str;
    this.b = paramBoolean;
  }
  
  public void a(njm paramnjm) {
    paramnjm.a(this.a, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nif.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */