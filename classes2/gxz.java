import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.util.Log;

public class gxz extends AsyncTask<gwz, Void, gwy> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public gxz(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected gwy a(gwz... paramVarArgs) {
    return (new gog<gwz, gwy>()).a(paramVarArgs[0], gwy.class, has.W(), "aceiteCampanha", "return");
  }
  
  protected void a(gwy paramgwy) {
    // Byte code:
    //   0: aload_0
    //   1: getfield c : Landroid/app/Dialog;
    //   4: ifnull -> 29
    //   7: aload_0
    //   8: getfield c : Landroid/app/Dialog;
    //   11: invokevirtual isShowing : ()Z
    //   14: ifeq -> 29
    //   17: aload_0
    //   18: getfield c : Landroid/app/Dialog;
    //   21: invokevirtual cancel : ()V
    //   24: aload_0
    //   25: aconst_null
    //   26: putfield c : Landroid/app/Dialog;
    //   29: aload_1
    //   30: ifnull -> 40
    //   33: aload_1
    //   34: invokevirtual getConfirmacao : ()Ljava/lang/String;
    //   37: ifnonnull -> 64
    //   40: aload_0
    //   41: getfield b : Landroid/app/Activity;
    //   44: ldc ''
    //   46: invokestatic e : (Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    //   49: pop
    //   50: return
    //   51: astore_2
    //   52: ldc 'AceiteCampanha'
    //   54: ldc ''
    //   56: aload_2
    //   57: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   60: pop
    //   61: goto -> 29
    //   64: aload_0
    //   65: getfield a : Lgkv;
    //   68: aload_1
    //   69: invokeinterface a : (Ljava/lang/Object;)V
    //   74: return
    // Exception table:
    //   from	to	target	type
    //   0	29	51	java/lang/Exception
  }
  
  public void onPreExecute() {
    try {
      this.c = mxn.b(this.b);
      return;
    } catch (Exception exception) {
      Log.e("AceiteCampanha", "", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gxz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */