import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.iid.MessengerCompat;

public class czs extends Service {
  static String ACTION = "action";
  
  private static String zzbgu;
  
  private static String zzbhP = "google.com/iid";
  
  private static String zzbhQ = "CMD";
  
  MessengerCompat zzbhN = new MessengerCompat(new czt(this, Looper.getMainLooper()));
  
  BroadcastReceiver zzbhO = new czu(this);
  
  int zzbhR;
  
  int zzbhS;
  
  static {
    zzbgu = "gcm.googleapis.com/refresh";
  }
  
  static void zza(Context paramContext, dad paramdad) {
    paramdad.b();
    Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
    intent.putExtra(zzbhQ, "RST");
    intent.setPackage(paramContext.getPackageName());
    paramContext.startService(intent);
  }
  
  private void zza(Message paramMessage, int paramInt) {
    dab.a((Context)this);
    getPackageManager();
    if (paramInt != dab.c && paramInt != dab.b) {
      int i = dab.b;
      int j = dab.c;
      Log.w("InstanceID", (new StringBuilder(77)).append("Message from unexpected caller ").append(paramInt).append(" mine=").append(i).append(" appid=").append(j).toString());
      return;
    } 
    zzn((Intent)paramMessage.obj);
  }
  
  static void zzbz(Context paramContext) {
    Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
    intent.setPackage(paramContext.getPackageName());
    intent.putExtra(zzbhQ, "SYNC");
    paramContext.startService(intent);
  }
  
  public IBinder onBind(Intent paramIntent) {
    return (paramIntent != null && "com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction())) ? this.zzbhN.a() : null;
  }
  
  public void onCreate() {
    IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
    intentFilter.addCategory(getPackageName());
    registerReceiver(this.zzbhO, intentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
  }
  
  public void onDestroy() {
    unregisterReceiver(this.zzbhO);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    zzjJ(paramInt2);
    if (paramIntent == null) {
      stop();
      return 2;
    } 
    try {
      if ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction())) {
        if (Build.VERSION.SDK_INT <= 18) {
          Intent intent = (Intent)paramIntent.getParcelableExtra("GSF");
          if (intent != null) {
            startService(intent);
            return 1;
          } 
        } 
        zzn(paramIntent);
      } 
      stop();
      return 2;
    } finally {
      stop();
    } 
  }
  
  public void onTokenRefresh() {}
  
  void stop() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield zzbhR : I
    //   7: iconst_1
    //   8: isub
    //   9: putfield zzbhR : I
    //   12: aload_0
    //   13: getfield zzbhR : I
    //   16: ifne -> 27
    //   19: aload_0
    //   20: aload_0
    //   21: getfield zzbhS : I
    //   24: invokevirtual stopSelf : (I)V
    //   27: ldc 'InstanceID'
    //   29: iconst_3
    //   30: invokestatic isLoggable : (Ljava/lang/String;I)Z
    //   33: ifeq -> 82
    //   36: aload_0
    //   37: getfield zzbhR : I
    //   40: istore_1
    //   41: aload_0
    //   42: getfield zzbhS : I
    //   45: istore_2
    //   46: ldc 'InstanceID'
    //   48: new java/lang/StringBuilder
    //   51: dup
    //   52: bipush #28
    //   54: invokespecial <init> : (I)V
    //   57: ldc 'Stop '
    //   59: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: iload_1
    //   63: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   66: ldc ' '
    //   68: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: iload_2
    //   72: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   75: invokevirtual toString : ()Ljava/lang/String;
    //   78: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   81: pop
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: astore_3
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_3
    //   89: athrow
    // Exception table:
    //   from	to	target	type
    //   2	27	85	finally
    //   27	82	85	finally
    //   82	84	85	finally
    //   86	88	85	finally
  }
  
  public void zzaG(boolean paramBoolean) {
    onTokenRefresh();
  }
  
  void zzjJ(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield zzbhR : I
    //   7: iconst_1
    //   8: iadd
    //   9: putfield zzbhR : I
    //   12: iload_1
    //   13: aload_0
    //   14: getfield zzbhS : I
    //   17: if_icmple -> 25
    //   20: aload_0
    //   21: iload_1
    //   22: putfield zzbhS : I
    //   25: aload_0
    //   26: monitorexit
    //   27: return
    //   28: astore_2
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_2
    //   32: athrow
    // Exception table:
    //   from	to	target	type
    //   2	25	28	finally
    //   25	27	28	finally
    //   29	31	28	finally
  }
  
  public void zzn(Intent paramIntent) {
    czr czr;
    String str2 = paramIntent.getStringExtra("subtype");
    if (str2 == null) {
      czr = czr.c((Context)this);
    } else {
      Bundle bundle = new Bundle();
      bundle.putString("subtype", str2);
      czr = czr.a((Context)this, bundle);
    } 
    String str1 = paramIntent.getStringExtra(zzbhQ);
    if (paramIntent.getStringExtra("error") != null || paramIntent.getStringExtra("registration_id") != null) {
      if (Log.isLoggable("InstanceID", 3)) {
        str1 = String.valueOf(str2);
        if (str1.length() != 0) {
          str1 = "Register result in service ".concat(str1);
        } else {
          str1 = new String("Register result in service ");
        } 
        Log.d("InstanceID", str1);
      } 
      czr.g().d(paramIntent);
      return;
    } 
    if (Log.isLoggable("InstanceID", 3)) {
      String str = String.valueOf(paramIntent.getExtras());
      Log.d("InstanceID", (new StringBuilder(String.valueOf(str2).length() + 18 + String.valueOf(str1).length() + String.valueOf(str).length())).append("Service command ").append(str2).append(" ").append(str1).append(" ").append(str).toString());
    } 
    if (paramIntent.getStringExtra("unregistered") != null) {
      dad dad = czr.f();
      str1 = str2;
      if (str2 == null)
        str1 = ""; 
      dad.e(str1);
      czr.g().d(paramIntent);
      return;
    } 
    if (zzbgu.equals(paramIntent.getStringExtra("from"))) {
      czr.f().e(str2);
      zzaG(false);
      return;
    } 
    if ("RST".equals(str1)) {
      czr.e();
      zzaG(true);
      return;
    } 
    if ("RST_FULL".equals(str1)) {
      if (!czr.f().a()) {
        czr.f().b();
        zzaG(true);
        return;
      } 
      return;
    } 
    if ("SYNC".equals(str1)) {
      czr.f().e(str2);
      zzaG(false);
      return;
    } 
    "PING".equals(str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */