import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import com.santander.app.MinhaConta;

public class nel extends gne<Void, Void, fwx> {
  private gkv a;
  
  private Activity b;
  
  private Dialog c;
  
  public nel(gkv paramgkv, Activity paramActivity) {
    this.a = paramgkv;
    this.b = paramActivity;
  }
  
  protected fwx a(Void... paramVarArgs) {
    try {
      return e() ? null : hat.r().a();
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public void a() {
    if (MinhaConta.h())
      return; 
    try {
      this.c = mxn.b(this.b);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  protected void a(fwx paramfwx) {
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
    //   34: invokevirtual hasError : ()Z
    //   37: ifeq -> 74
    //   40: invokestatic d : ()Lhav;
    //   43: aload_0
    //   44: getfield b : Landroid/app/Activity;
    //   47: new fvu
    //   50: dup
    //   51: invokespecial <init> : ()V
    //   54: iconst_0
    //   55: iconst_0
    //   56: invokevirtual a : (Landroid/app/Activity;Lfvu;ZZ)V
    //   59: return
    //   60: astore_2
    //   61: ldc 'Error'
    //   63: aload_2
    //   64: invokevirtual getMessage : ()Ljava/lang/String;
    //   67: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   70: pop
    //   71: goto -> 29
    //   74: aload_0
    //   75: getfield a : Lgkv;
    //   78: aload_1
    //   79: invokeinterface a : (Ljava/lang/Object;)V
    //   84: return
    // Exception table:
    //   from	to	target	type
    //   0	29	60	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */