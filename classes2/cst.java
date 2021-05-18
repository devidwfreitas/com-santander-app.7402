import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.internal.zzah;

public final class cst extends cxq<cva> {
  private static final cst a = new cst();
  
  private cst() {
    super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
  }
  
  public static View a(Context paramContext, int paramInt1, int paramInt2) {
    return a.b(paramContext, paramInt1, paramInt2);
  }
  
  private View b(Context paramContext, int paramInt1, int paramInt2) {
    try {
      zzah zzah = new zzah(paramInt1, paramInt2, null);
      cwx cwx = cxo.a(paramContext);
      return cxo.<View>a(a(paramContext).a(cwx, zzah));
    } catch (Exception exception) {
      throw new cxr((new StringBuilder(64)).append("Could not get button with size ").append(paramInt1).append(" and color ").append(paramInt2).toString(), exception);
    } 
  }
  
  public cva a(IBinder paramIBinder) {
    return cvb.a(paramIBinder);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cst.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */