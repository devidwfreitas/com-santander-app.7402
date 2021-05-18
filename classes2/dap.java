import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

public abstract class dap extends ddj implements DialogInterface.OnCancelListener {
  protected boolean a;
  
  protected boolean b;
  
  protected final con c;
  
  private ConnectionResult e;
  
  private int f = -1;
  
  private final Handler g = new Handler(Looper.getMainLooper());
  
  protected dap(ddk paramddk) {
    this(paramddk, con.a());
  }
  
  dap(ddk paramddk, con paramcon) {
    super(paramddk);
    this.c = paramcon;
  }
  
  public void a() {
    super.a();
    this.a = true;
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #4
    //   3: iconst_1
    //   4: istore #5
    //   6: iload_1
    //   7: tableswitch default -> 28, 1 -> 84, 2 -> 39
    //   28: iconst_0
    //   29: istore_1
    //   30: iload_1
    //   31: ifeq -> 125
    //   34: aload_0
    //   35: invokevirtual d : ()V
    //   38: return
    //   39: aload_0
    //   40: getfield c : Lcon;
    //   43: aload_0
    //   44: invokevirtual f : ()Landroid/app/Activity;
    //   47: invokevirtual a : (Landroid/content/Context;)I
    //   50: istore #5
    //   52: iload #5
    //   54: ifne -> 144
    //   57: iload #4
    //   59: istore_2
    //   60: iload_2
    //   61: istore_1
    //   62: aload_0
    //   63: getfield e : Lcom/google/android/gms/common/ConnectionResult;
    //   66: invokevirtual c : ()I
    //   69: bipush #18
    //   71: if_icmpne -> 30
    //   74: iload_2
    //   75: istore_1
    //   76: iload #5
    //   78: bipush #18
    //   80: if_icmpne -> 30
    //   83: return
    //   84: iload #5
    //   86: istore_1
    //   87: iload_2
    //   88: iconst_m1
    //   89: if_icmpeq -> 30
    //   92: iload_2
    //   93: ifne -> 28
    //   96: aload_3
    //   97: ifnull -> 138
    //   100: aload_3
    //   101: ldc '<<ResolutionFailureErrorDetail>>'
    //   103: bipush #13
    //   105: invokevirtual getIntExtra : (Ljava/lang/String;I)I
    //   108: istore_1
    //   109: aload_0
    //   110: new com/google/android/gms/common/ConnectionResult
    //   113: dup
    //   114: iload_1
    //   115: aconst_null
    //   116: invokespecial <init> : (ILandroid/app/PendingIntent;)V
    //   119: putfield e : Lcom/google/android/gms/common/ConnectionResult;
    //   122: goto -> 28
    //   125: aload_0
    //   126: aload_0
    //   127: getfield e : Lcom/google/android/gms/common/ConnectionResult;
    //   130: aload_0
    //   131: getfield f : I
    //   134: invokevirtual a : (Lcom/google/android/gms/common/ConnectionResult;I)V
    //   137: return
    //   138: bipush #13
    //   140: istore_1
    //   141: goto -> 109
    //   144: iconst_0
    //   145: istore_2
    //   146: goto -> 60
  }
  
  public void a(Bundle paramBundle) {
    super.a(paramBundle);
    if (paramBundle != null) {
      this.b = paramBundle.getBoolean("resolving_error", false);
      if (this.b) {
        this.f = paramBundle.getInt("failed_client_id", -1);
        this.e = new ConnectionResult(paramBundle.getInt("failed_status"), (PendingIntent)paramBundle.getParcelable("failed_resolution"));
      } 
    } 
  }
  
  protected abstract void a(ConnectionResult paramConnectionResult, int paramInt);
  
  public void b() {
    super.b();
    this.a = false;
  }
  
  public void b(Bundle paramBundle) {
    super.b(paramBundle);
    paramBundle.putBoolean("resolving_error", this.b);
    if (this.b) {
      paramBundle.putInt("failed_client_id", this.f);
      paramBundle.putInt("failed_status", this.e.c());
      paramBundle.putParcelable("failed_resolution", (Parcelable)this.e.d());
    } 
  }
  
  public void b(ConnectionResult paramConnectionResult, int paramInt) {
    if (!this.b) {
      this.b = true;
      this.f = paramInt;
      this.e = paramConnectionResult;
      this.g.post(new dar(this, null));
    } 
  }
  
  protected abstract void c();
  
  protected void d() {
    this.f = -1;
    this.b = false;
    this.e = null;
    c();
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {
    a(new ConnectionResult(13, null), this.f);
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */