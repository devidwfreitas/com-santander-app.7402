import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.Profile;

public final class bjg {
  static final String a = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED";
  
  static final String b = "com.facebook.sdk.EXTRA_OLD_PROFILE";
  
  static final String c = "com.facebook.sdk.EXTRA_NEW_PROFILE";
  
  private static volatile bjg d;
  
  private final LocalBroadcastManager e;
  
  private final bjf f;
  
  private Profile g;
  
  bjg(LocalBroadcastManager paramLocalBroadcastManager, bjf parambjf) {
    bqx.a(paramLocalBroadcastManager, "localBroadcastManager");
    bqx.a(parambjf, "profileCache");
    this.e = paramLocalBroadcastManager;
    this.f = parambjf;
  }
  
  public static bjg a() {
    // Byte code:
    //   0: getstatic bjg.d : Lbjg;
    //   3: ifnonnull -> 41
    //   6: ldc bjg
    //   8: monitorenter
    //   9: getstatic bjg.d : Lbjg;
    //   12: ifnonnull -> 38
    //   15: new bjg
    //   18: dup
    //   19: invokestatic h : ()Landroid/content/Context;
    //   22: invokestatic getInstance : (Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    //   25: new bjf
    //   28: dup
    //   29: invokespecial <init> : ()V
    //   32: invokespecial <init> : (Landroid/support/v4/content/LocalBroadcastManager;Lbjf;)V
    //   35: putstatic bjg.d : Lbjg;
    //   38: ldc bjg
    //   40: monitorexit
    //   41: getstatic bjg.d : Lbjg;
    //   44: areturn
    //   45: astore_0
    //   46: ldc bjg
    //   48: monitorexit
    //   49: aload_0
    //   50: athrow
    // Exception table:
    //   from	to	target	type
    //   9	38	45	finally
    //   38	41	45	finally
    //   46	49	45	finally
  }
  
  private void a(Profile paramProfile1, Profile paramProfile2) {
    Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
    intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", (Parcelable)paramProfile1);
    intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", (Parcelable)paramProfile2);
    this.e.sendBroadcast(intent);
  }
  
  private void a(Profile paramProfile, boolean paramBoolean) {
    Profile profile = this.g;
    this.g = paramProfile;
    if (paramBoolean)
      if (paramProfile != null) {
        this.f.a(paramProfile);
      } else {
        this.f.b();
      }  
    if (!bqq.a(profile, paramProfile))
      a(profile, paramProfile); 
  }
  
  public void a(Profile paramProfile) {
    a(paramProfile, true);
  }
  
  public Profile b() {
    return this.g;
  }
  
  boolean c() {
    boolean bool = false;
    Profile profile = this.f.a();
    if (profile != null) {
      a(profile, false);
      bool = true;
    } 
    return bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bjg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */