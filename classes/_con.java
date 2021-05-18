import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.FragmentManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.TypedValue;
import android.view.View;
import android.widget.ProgressBar;
import com.ca.android.app.CaMDOProgressBar;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;

public class con extends cwn {
  public static final int a;
  
  public static final String b = "com.google.android.gms";
  
  private static final con e = new con();
  
  static {
    a = cwn.c;
  }
  
  public static con a() {
    return e;
  }
  
  public int a(Context paramContext) {
    return super.a(paramContext);
  }
  
  public Dialog a(Activity paramActivity, int paramInt1, int paramInt2) {
    return a(paramActivity, paramInt1, paramInt2, (DialogInterface.OnCancelListener)null);
  }
  
  public Dialog a(Activity paramActivity, int paramInt1, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener) {
    return a((Context)paramActivity, paramInt1, ctq.a(paramActivity, b((Context)paramActivity, paramInt1, "d"), paramInt2), paramOnCancelListener);
  }
  
  public Dialog a(Activity paramActivity, DialogInterface.OnCancelListener paramOnCancelListener) {
    ProgressBar progressBar = new ProgressBar((Context)paramActivity, null, 16842874);
    progressBar.setIndeterminate(true);
    CaMDOProgressBar.setVisibility(progressBar, 0);
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)paramActivity);
    builder.setView((View)progressBar);
    builder.setMessage(ctp.c((Context)paramActivity, 18));
    builder.setPositiveButton("", null);
    AlertDialog alertDialog = builder.create();
    a(paramActivity, (Dialog)alertDialog, "GooglePlayServicesUpdatingDialog", paramOnCancelListener);
    return (Dialog)alertDialog;
  }
  
  Dialog a(Context paramContext, int paramInt, ctq paramctq, DialogInterface.OnCancelListener paramOnCancelListener) {
    AlertDialog.Builder builder1 = null;
    if (paramInt == 0)
      return null; 
    TypedValue typedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(16843529, typedValue, true);
    if ("Theme.Dialog.Alert".equals(paramContext.getResources().getResourceEntryName(typedValue.resourceId)))
      builder1 = new AlertDialog.Builder(paramContext, 5); 
    AlertDialog.Builder builder2 = builder1;
    if (builder1 == null)
      builder2 = new AlertDialog.Builder(paramContext); 
    builder2.setMessage(ctp.c(paramContext, paramInt));
    if (paramOnCancelListener != null)
      builder2.setOnCancelListener(paramOnCancelListener); 
    String str2 = ctp.e(paramContext, paramInt);
    if (str2 != null)
      builder2.setPositiveButton(str2, (DialogInterface.OnClickListener)paramctq); 
    String str1 = ctp.a(paramContext, paramInt);
    if (str1 != null)
      builder2.setTitle(str1); 
    return (Dialog)builder2.create();
  }
  
  @Nullable
  public PendingIntent a(Context paramContext, int paramInt1, int paramInt2) {
    return super.a(paramContext, paramInt1, paramInt2);
  }
  
  @Nullable
  public PendingIntent a(Context paramContext, int paramInt1, int paramInt2, @Nullable String paramString) {
    return super.a(paramContext, paramInt1, paramInt2, paramString);
  }
  
  @Nullable
  public dcz a(Context paramContext, dda paramdda) {
    IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
    intentFilter.addDataScheme("package");
    dcz dcz2 = new dcz(paramdda);
    paramContext.registerReceiver((BroadcastReceiver)dcz2, intentFilter);
    dcz2.a(paramContext);
    dcz dcz1 = dcz2;
    if (!a(paramContext, "com.google.android.gms")) {
      paramdda.a();
      dcz2.a();
      dcz1 = null;
    } 
    return dcz1;
  }
  
  @MainThread
  public egv<Void> a(Activity paramActivity) {
    csp.b("makeGooglePlayServicesAvailable must be called from the main thread");
    int i = a((Context)paramActivity);
    if (i == 0)
      return eha.a(null); 
    dds dds = dds.b(paramActivity);
    dds.a(new ConnectionResult(i, null));
    return dds.e();
  }
  
  void a(Activity paramActivity, Dialog paramDialog, String paramString, DialogInterface.OnCancelListener paramOnCancelListener) {
    FragmentManager fragmentManager1;
    try {
      boolean bool = paramActivity instanceof FragmentActivity;
      if (bool) {
        fragmentManager1 = ((FragmentActivity)paramActivity).getSupportFragmentManager();
        cov.a(paramDialog, paramOnCancelListener).show(fragmentManager1, paramString);
        return;
      } 
    } catch (NoClassDefFoundError noClassDefFoundError) {
      boolean bool = false;
      if (bool) {
        fragmentManager1 = ((FragmentActivity)fragmentManager1).getSupportFragmentManager();
        cov.a(paramDialog, paramOnCancelListener).show(fragmentManager1, paramString);
        return;
      } 
    } 
    FragmentManager fragmentManager = fragmentManager1.getFragmentManager();
    com.a(paramDialog, paramOnCancelListener).show(fragmentManager, paramString);
  }
  
  public void a(Context paramContext, int paramInt) {
    a(paramContext, paramInt, (String)null);
  }
  
  public void a(Context paramContext, int paramInt, String paramString) {
    a(paramContext, paramInt, paramString, a(paramContext, paramInt, 0, "n"));
  }
  
  @TargetApi(20)
  void a(Context paramContext, int paramInt, String paramString, PendingIntent paramPendingIntent) {
    // Byte code:
    //   0: iload_2
    //   1: bipush #18
    //   3: if_icmpne -> 12
    //   6: aload_0
    //   7: aload_1
    //   8: invokevirtual d : (Landroid/content/Context;)V
    //   11: return
    //   12: aload #4
    //   14: ifnonnull -> 34
    //   17: iload_2
    //   18: bipush #6
    //   20: if_icmpne -> 11
    //   23: ldc_w 'GoogleApiAvailability'
    //   26: ldc_w 'Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.'
    //   29: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   32: pop
    //   33: return
    //   34: aload_1
    //   35: iload_2
    //   36: invokestatic b : (Landroid/content/Context;I)Ljava/lang/String;
    //   39: astore #5
    //   41: aload_1
    //   42: iload_2
    //   43: invokestatic d : (Landroid/content/Context;I)Ljava/lang/String;
    //   46: astore #6
    //   48: aload_1
    //   49: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   52: astore #7
    //   54: aload_1
    //   55: invokestatic b : (Landroid/content/Context;)Z
    //   58: ifeq -> 187
    //   61: invokestatic i : ()Z
    //   64: invokestatic a : (Z)V
    //   67: new android/app/Notification$Builder
    //   70: dup
    //   71: aload_1
    //   72: invokespecial <init> : (Landroid/content/Context;)V
    //   75: aload_1
    //   76: invokevirtual getApplicationInfo : ()Landroid/content/pm/ApplicationInfo;
    //   79: getfield icon : I
    //   82: invokevirtual setSmallIcon : (I)Landroid/app/Notification$Builder;
    //   85: iconst_2
    //   86: invokevirtual setPriority : (I)Landroid/app/Notification$Builder;
    //   89: iconst_1
    //   90: invokevirtual setAutoCancel : (Z)Landroid/app/Notification$Builder;
    //   93: aload #5
    //   95: invokevirtual setContentTitle : (Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    //   98: new android/app/Notification$BigTextStyle
    //   101: dup
    //   102: invokespecial <init> : ()V
    //   105: aload #6
    //   107: invokevirtual bigText : (Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    //   110: invokevirtual setStyle : (Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    //   113: getstatic cno.common_full_open_on_phone : I
    //   116: aload #7
    //   118: getstatic cns.common_open_on_phone : I
    //   121: invokevirtual getString : (I)Ljava/lang/String;
    //   124: aload #4
    //   126: invokevirtual addAction : (ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    //   129: invokevirtual build : ()Landroid/app/Notification;
    //   132: astore #4
    //   134: iload_2
    //   135: tableswitch default -> 160, 1 -> 264, 2 -> 264, 3 -> 264
    //   160: ldc_w 39789
    //   163: istore_2
    //   164: aload_1
    //   165: ldc_w 'notification'
    //   168: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   171: checkcast android/app/NotificationManager
    //   174: astore_1
    //   175: aload_3
    //   176: ifnonnull -> 278
    //   179: aload_1
    //   180: iload_2
    //   181: aload #4
    //   183: invokevirtual notify : (ILandroid/app/Notification;)V
    //   186: return
    //   187: new android/support/v4/app/NotificationCompat$Builder
    //   190: dup
    //   191: aload_1
    //   192: invokespecial <init> : (Landroid/content/Context;)V
    //   195: ldc_w 17301642
    //   198: invokevirtual setSmallIcon : (I)Landroid/support/v4/app/NotificationCompat$Builder;
    //   201: aload #7
    //   203: getstatic cns.common_google_play_services_notification_ticker : I
    //   206: invokevirtual getString : (I)Ljava/lang/String;
    //   209: invokevirtual setTicker : (Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   212: invokestatic currentTimeMillis : ()J
    //   215: invokevirtual setWhen : (J)Landroid/support/v4/app/NotificationCompat$Builder;
    //   218: iconst_1
    //   219: invokevirtual setAutoCancel : (Z)Landroid/support/v4/app/NotificationCompat$Builder;
    //   222: aload #4
    //   224: invokevirtual setContentIntent : (Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   227: aload #5
    //   229: invokevirtual setContentTitle : (Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   232: aload #6
    //   234: invokevirtual setContentText : (Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   237: iconst_1
    //   238: invokevirtual setLocalOnly : (Z)Landroid/support/v4/app/NotificationCompat$Builder;
    //   241: new android/support/v4/app/NotificationCompat$BigTextStyle
    //   244: dup
    //   245: invokespecial <init> : ()V
    //   248: aload #6
    //   250: invokevirtual bigText : (Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    //   253: invokevirtual setStyle : (Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   256: invokevirtual build : ()Landroid/app/Notification;
    //   259: astore #4
    //   261: goto -> 134
    //   264: getstatic cwv.k : Ljava/util/concurrent/atomic/AtomicBoolean;
    //   267: iconst_0
    //   268: invokevirtual set : (Z)V
    //   271: sipush #10436
    //   274: istore_2
    //   275: goto -> 164
    //   278: aload_1
    //   279: aload_3
    //   280: iload_2
    //   281: aload #4
    //   283: invokevirtual notify : (Ljava/lang/String;ILandroid/app/Notification;)V
    //   286: return
  }
  
  public void a(Context paramContext, ConnectionResult paramConnectionResult) {
    PendingIntent pendingIntent = b(paramContext, paramConnectionResult);
    a(paramContext, paramConnectionResult.c(), (String)null, pendingIntent);
  }
  
  public final boolean a(int paramInt) {
    return super.a(paramInt);
  }
  
  public boolean a(Activity paramActivity, @NonNull ddk paramddk, int paramInt1, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener) {
    Dialog dialog = a((Context)paramActivity, paramInt1, ctq.a(paramddk, b((Context)paramActivity, paramInt1, "d"), paramInt2), paramOnCancelListener);
    if (dialog == null)
      return false; 
    a(paramActivity, dialog, "GooglePlayServicesErrorDialog", paramOnCancelListener);
    return true;
  }
  
  public boolean a(Context paramContext, ConnectionResult paramConnectionResult, int paramInt) {
    PendingIntent pendingIntent = b(paramContext, paramConnectionResult);
    if (pendingIntent != null) {
      a(paramContext, paramConnectionResult.c(), (String)null, GoogleApiActivity.a(paramContext, pendingIntent, paramInt));
      return true;
    } 
    return false;
  }
  
  @Nullable
  public PendingIntent b(Context paramContext, ConnectionResult paramConnectionResult) {
    return paramConnectionResult.a() ? paramConnectionResult.d() : a(paramContext, paramConnectionResult.c(), 0);
  }
  
  @Deprecated
  @Nullable
  public Intent b(int paramInt) {
    return super.b(paramInt);
  }
  
  @Nullable
  public Intent b(Context paramContext, int paramInt, @Nullable String paramString) {
    return super.b(paramContext, paramInt, paramString);
  }
  
  @Nullable
  public String b(Context paramContext) {
    return super.b(paramContext);
  }
  
  public boolean b(Activity paramActivity, int paramInt1, int paramInt2) {
    return b(paramActivity, paramInt1, paramInt2, null);
  }
  
  public boolean b(Activity paramActivity, int paramInt1, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener) {
    Dialog dialog = a(paramActivity, paramInt1, paramInt2, paramOnCancelListener);
    if (dialog == null)
      return false; 
    a(paramActivity, dialog, "GooglePlayServicesErrorDialog", paramOnCancelListener);
    return true;
  }
  
  public boolean b(Context paramContext, int paramInt) {
    return super.b(paramContext, paramInt);
  }
  
  public int c(Context paramContext) {
    return super.c(paramContext);
  }
  
  public final String c(int paramInt) {
    return super.c(paramInt);
  }
  
  void d(Context paramContext) {
    (new coo(this, paramContext)).sendEmptyMessageDelayed(1, 120000L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\con.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */