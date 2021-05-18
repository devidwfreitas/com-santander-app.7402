import android.content.Context;
import android.util.Log;

class clq implements Runnable {
  clq(clp paramclp, Context paramContext, cms paramcms, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {}
  
  public void run() {
    try {
      String str = cmn.a(this.a, this.b);
      if (str != null)
        cmn.a(this.a).a(str, this.b, this.c, this.d, this.e); 
      return;
    } catch (Exception exception) {
      Log.e("GoogleConversionReporter", "Error sending ping", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\clq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */