import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

public final class dcz extends BroadcastReceiver {
  protected Context a;
  
  private final dda b;
  
  public dcz(dda paramdda) {
    this.b = paramdda;
  }
  
  public void a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/content/Context;
    //   6: ifnull -> 17
    //   9: aload_0
    //   10: getfield a : Landroid/content/Context;
    //   13: aload_0
    //   14: invokevirtual unregisterReceiver : (Landroid/content/BroadcastReceiver;)V
    //   17: aload_0
    //   18: aconst_null
    //   19: putfield a : Landroid/content/Context;
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   2	17	25	finally
    //   17	22	25	finally
  }
  
  public void a(Context paramContext) {
    this.a = paramContext;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    String str;
    Uri uri = paramIntent.getData();
    paramContext = null;
    if (uri != null)
      str = uri.getSchemeSpecificPart(); 
    if ("com.google.android.gms".equals(str)) {
      this.b.a();
      a();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */