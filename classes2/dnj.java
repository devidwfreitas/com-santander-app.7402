import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.text.TextUtils;

@TargetApi(14)
@MainThread
class dnj implements Application.ActivityLifecycleCallbacks {
  private dnj(dmw paramdmw) {}
  
  private boolean a(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      this.a.a("auto", "_ldl", paramString);
      return true;
    } 
    return false;
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Ldmw;
    //   4: invokevirtual u : ()Ldkw;
    //   7: invokevirtual D : ()Ldky;
    //   10: ldc 'onActivityCreated'
    //   12: invokevirtual a : (Ljava/lang/String;)V
    //   15: aload_1
    //   16: invokevirtual getIntent : ()Landroid/content/Intent;
    //   19: astore #4
    //   21: aload #4
    //   23: ifnull -> 221
    //   26: aload #4
    //   28: invokevirtual getData : ()Landroid/net/Uri;
    //   31: astore #5
    //   33: aload #5
    //   35: ifnull -> 221
    //   38: aload #5
    //   40: invokevirtual isHierarchical : ()Z
    //   43: ifeq -> 221
    //   46: aload_2
    //   47: ifnonnull -> 101
    //   50: aload_0
    //   51: getfield a : Ldmw;
    //   54: invokevirtual q : ()Ldou;
    //   57: aload #5
    //   59: invokevirtual a : (Landroid/net/Uri;)Landroid/os/Bundle;
    //   62: astore #6
    //   64: aload_0
    //   65: getfield a : Ldmw;
    //   68: invokevirtual q : ()Ldou;
    //   71: aload #4
    //   73: invokevirtual a : (Landroid/content/Intent;)Z
    //   76: ifeq -> 266
    //   79: ldc 'gs'
    //   81: astore #4
    //   83: aload #6
    //   85: ifnull -> 101
    //   88: aload_0
    //   89: getfield a : Ldmw;
    //   92: aload #4
    //   94: ldc '_cmp'
    //   96: aload #6
    //   98: invokevirtual a : (Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    //   101: aload #5
    //   103: ldc 'referrer'
    //   105: invokevirtual getQueryParameter : (Ljava/lang/String;)Ljava/lang/String;
    //   108: astore #4
    //   110: aload #4
    //   112: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   115: ifeq -> 119
    //   118: return
    //   119: aload #4
    //   121: ldc 'gclid'
    //   123: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   126: ifeq -> 234
    //   129: aload #4
    //   131: ldc 'utm_campaign'
    //   133: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   136: ifne -> 273
    //   139: aload #4
    //   141: ldc 'utm_source'
    //   143: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   146: ifne -> 273
    //   149: aload #4
    //   151: ldc 'utm_medium'
    //   153: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   156: ifne -> 273
    //   159: aload #4
    //   161: ldc 'utm_term'
    //   163: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   166: ifne -> 273
    //   169: aload #4
    //   171: ldc 'utm_content'
    //   173: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   176: ifeq -> 234
    //   179: goto -> 273
    //   182: iload_3
    //   183: ifne -> 239
    //   186: aload_0
    //   187: getfield a : Ldmw;
    //   190: invokevirtual u : ()Ldkw;
    //   193: invokevirtual C : ()Ldky;
    //   196: ldc 'Activity created with data 'referrer' param without gclid and at least one utm field'
    //   198: invokevirtual a : (Ljava/lang/String;)V
    //   201: return
    //   202: astore #4
    //   204: aload_0
    //   205: getfield a : Ldmw;
    //   208: invokevirtual u : ()Ldkw;
    //   211: invokevirtual x : ()Ldky;
    //   214: ldc 'Throwable caught in onActivityCreated'
    //   216: aload #4
    //   218: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   221: aload_0
    //   222: getfield a : Ldmw;
    //   225: invokevirtual l : ()Ldnk;
    //   228: aload_1
    //   229: aload_2
    //   230: invokevirtual a : (Landroid/app/Activity;Landroid/os/Bundle;)V
    //   233: return
    //   234: iconst_0
    //   235: istore_3
    //   236: goto -> 182
    //   239: aload_0
    //   240: getfield a : Ldmw;
    //   243: invokevirtual u : ()Ldkw;
    //   246: invokevirtual C : ()Ldky;
    //   249: ldc 'Activity created with referrer'
    //   251: aload #4
    //   253: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   256: aload_0
    //   257: aload #4
    //   259: invokespecial a : (Ljava/lang/String;)Z
    //   262: pop
    //   263: goto -> 221
    //   266: ldc 'auto'
    //   268: astore #4
    //   270: goto -> 83
    //   273: iconst_1
    //   274: istore_3
    //   275: goto -> 182
    // Exception table:
    //   from	to	target	type
    //   0	21	202	java/lang/Throwable
    //   26	33	202	java/lang/Throwable
    //   38	46	202	java/lang/Throwable
    //   50	79	202	java/lang/Throwable
    //   88	101	202	java/lang/Throwable
    //   101	118	202	java/lang/Throwable
    //   119	179	202	java/lang/Throwable
    //   186	201	202	java/lang/Throwable
    //   239	263	202	java/lang/Throwable
  }
  
  public void onActivityDestroyed(Activity paramActivity) {
    this.a.l().d(paramActivity);
  }
  
  @MainThread
  public void onActivityPaused(Activity paramActivity) {
    this.a.l().c(paramActivity);
    this.a.s().y();
  }
  
  @MainThread
  public void onActivityResumed(Activity paramActivity) {
    this.a.l().b(paramActivity);
    this.a.s().x();
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {
    this.a.l().b(paramActivity, paramBundle);
  }
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dnj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */