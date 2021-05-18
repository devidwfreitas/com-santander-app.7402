package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
class FadePort extends VisibilityPort {
  private static boolean DBG = false;
  
  public static final int IN = 1;
  
  private static final String LOG_TAG = "Fade";
  
  public static final int OUT = 2;
  
  private static final String PROPNAME_SCREEN_X = "android:fade:screenX";
  
  private static final String PROPNAME_SCREEN_Y = "android:fade:screenY";
  
  private int mFadingMode;
  
  public FadePort() {
    this(3);
  }
  
  public FadePort(int paramInt) {
    this.mFadingMode = paramInt;
  }
  
  private void captureValues(TransitionValues paramTransitionValues) {
    int[] arrayOfInt = new int[2];
    paramTransitionValues.view.getLocationOnScreen(arrayOfInt);
    paramTransitionValues.values.put("android:fade:screenX", Integer.valueOf(arrayOfInt[0]));
    paramTransitionValues.values.put("android:fade:screenY", Integer.valueOf(arrayOfInt[1]));
  }
  
  private Animator createAnimation(View paramView, float paramFloat1, float paramFloat2, AnimatorListenerAdapter paramAnimatorListenerAdapter) {
    View view = null;
    if (paramFloat1 == paramFloat2) {
      paramView = view;
      if (paramAnimatorListenerAdapter != null) {
        paramAnimatorListenerAdapter.onAnimationEnd(null);
        paramView = view;
      } 
      return (Animator)paramView;
    } 
    ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(paramView, "alpha", new float[] { paramFloat1, paramFloat2 });
    if (DBG)
      Log.d("Fade", "Created animator " + objectAnimator2); 
    ObjectAnimator objectAnimator1 = objectAnimator2;
    if (paramAnimatorListenerAdapter != null) {
      objectAnimator2.addListener((Animator.AnimatorListener)paramAnimatorListenerAdapter);
      return (Animator)objectAnimator2;
    } 
    return (Animator)objectAnimator1;
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    super.captureStartValues(paramTransitionValues);
    captureValues(paramTransitionValues);
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    if ((this.mFadingMode & 0x1) != 1 || paramTransitionValues2 == null)
      return null; 
    View view = paramTransitionValues2.view;
    if (DBG) {
      if (paramTransitionValues1 != null) {
        View view1 = paramTransitionValues1.view;
      } else {
        paramViewGroup = null;
      } 
      Log.d("Fade", "Fade.onAppear: startView, startVis, endView, endVis = " + paramViewGroup + ", " + paramInt1 + ", " + view + ", " + paramInt2);
    } 
    view.setAlpha(0.0F);
    addListener(new FadePort$1(this, view));
    return createAnimation(view, 0.0F, 1.0F, (AnimatorListenerAdapter)null);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mFadingMode : I
    //   4: iconst_2
    //   5: iand
    //   6: iconst_2
    //   7: if_icmpeq -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload_2
    //   13: ifnull -> 247
    //   16: aload_2
    //   17: getfield view : Landroid/view/View;
    //   20: astore #7
    //   22: aload #4
    //   24: ifnull -> 253
    //   27: aload #4
    //   29: getfield view : Landroid/view/View;
    //   32: astore #4
    //   34: getstatic android/support/transition/FadePort.DBG : Z
    //   37: ifeq -> 95
    //   40: ldc 'Fade'
    //   42: new java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial <init> : ()V
    //   49: ldc 'Fade.onDisappear: startView, startVis, endView, endVis = '
    //   51: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: aload #7
    //   56: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   59: ldc ', '
    //   61: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: iload_3
    //   65: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   68: ldc ', '
    //   70: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload #4
    //   75: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   78: ldc ', '
    //   80: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: iload #5
    //   85: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   88: invokevirtual toString : ()Ljava/lang/String;
    //   91: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   94: pop
    //   95: aload #4
    //   97: ifnull -> 108
    //   100: aload #4
    //   102: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   105: ifnonnull -> 372
    //   108: aload #4
    //   110: ifnull -> 259
    //   113: aconst_null
    //   114: astore #9
    //   116: aload #4
    //   118: astore #7
    //   120: aload #4
    //   122: astore #8
    //   124: aload #9
    //   126: astore #4
    //   128: aload #7
    //   130: ifnull -> 447
    //   133: aload_2
    //   134: getfield values : Ljava/util/Map;
    //   137: ldc 'android:fade:screenX'
    //   139: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   144: checkcast java/lang/Integer
    //   147: invokevirtual intValue : ()I
    //   150: istore_3
    //   151: aload_2
    //   152: getfield values : Ljava/util/Map;
    //   155: ldc 'android:fade:screenY'
    //   157: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   162: checkcast java/lang/Integer
    //   165: invokevirtual intValue : ()I
    //   168: istore #6
    //   170: iconst_2
    //   171: newarray int
    //   173: astore_2
    //   174: aload_1
    //   175: aload_2
    //   176: invokevirtual getLocationOnScreen : ([I)V
    //   179: aload #7
    //   181: iload_3
    //   182: aload_2
    //   183: iconst_0
    //   184: iaload
    //   185: isub
    //   186: aload #7
    //   188: invokevirtual getLeft : ()I
    //   191: isub
    //   192: invokestatic offsetLeftAndRight : (Landroid/view/View;I)V
    //   195: aload #7
    //   197: iload #6
    //   199: aload_2
    //   200: iconst_1
    //   201: iaload
    //   202: isub
    //   203: aload #7
    //   205: invokevirtual getTop : ()I
    //   208: isub
    //   209: invokestatic offsetTopAndBottom : (Landroid/view/View;I)V
    //   212: aload_1
    //   213: invokestatic createFrom : (Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlay;
    //   216: aload #7
    //   218: invokevirtual add : (Landroid/view/View;)V
    //   221: aload_0
    //   222: aload #8
    //   224: fconst_1
    //   225: fconst_0
    //   226: new android/support/transition/FadePort$2
    //   229: dup
    //   230: aload_0
    //   231: aload #8
    //   233: aload #4
    //   235: iload #5
    //   237: aload #7
    //   239: aload_1
    //   240: invokespecial <init> : (Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V
    //   243: invokespecial createAnimation : (Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    //   246: areturn
    //   247: aconst_null
    //   248: astore #7
    //   250: goto -> 22
    //   253: aconst_null
    //   254: astore #4
    //   256: goto -> 34
    //   259: aload #7
    //   261: ifnull -> 493
    //   264: aload #7
    //   266: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   269: ifnonnull -> 290
    //   272: aconst_null
    //   273: astore #4
    //   275: aload #7
    //   277: astore #9
    //   279: aload #7
    //   281: astore #8
    //   283: aload #9
    //   285: astore #7
    //   287: goto -> 128
    //   290: aload #7
    //   292: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   295: instanceof android/view/View
    //   298: ifeq -> 493
    //   301: aload #7
    //   303: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   306: invokeinterface getParent : ()Landroid/view/ViewParent;
    //   311: ifnonnull -> 493
    //   314: aload #7
    //   316: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   319: checkcast android/view/View
    //   322: invokevirtual getId : ()I
    //   325: istore_3
    //   326: iload_3
    //   327: iconst_m1
    //   328: if_icmpeq -> 484
    //   331: aload_1
    //   332: iload_3
    //   333: invokevirtual findViewById : (I)Landroid/view/View;
    //   336: ifnull -> 484
    //   339: aload_0
    //   340: getfield mCanRemoveViews : Z
    //   343: ifeq -> 484
    //   346: aload #7
    //   348: astore #4
    //   350: aconst_null
    //   351: astore #10
    //   353: aload #4
    //   355: astore #9
    //   357: aload #7
    //   359: astore #8
    //   361: aload #10
    //   363: astore #4
    //   365: aload #9
    //   367: astore #7
    //   369: goto -> 128
    //   372: iload #5
    //   374: iconst_4
    //   375: if_icmpne -> 400
    //   378: aload #4
    //   380: astore #7
    //   382: aconst_null
    //   383: astore #9
    //   385: aload #4
    //   387: astore #8
    //   389: aload #7
    //   391: astore #4
    //   393: aload #9
    //   395: astore #7
    //   397: goto -> 128
    //   400: aload #7
    //   402: aload #4
    //   404: if_acmpne -> 429
    //   407: aload #4
    //   409: astore #7
    //   411: aconst_null
    //   412: astore #9
    //   414: aload #4
    //   416: astore #8
    //   418: aload #7
    //   420: astore #4
    //   422: aload #9
    //   424: astore #7
    //   426: goto -> 128
    //   429: aconst_null
    //   430: astore #4
    //   432: aload #7
    //   434: astore #9
    //   436: aload #7
    //   438: astore #8
    //   440: aload #9
    //   442: astore #7
    //   444: goto -> 128
    //   447: aload #4
    //   449: ifnull -> 10
    //   452: aload #4
    //   454: iconst_0
    //   455: invokevirtual setVisibility : (I)V
    //   458: aload_0
    //   459: aload #8
    //   461: fconst_1
    //   462: fconst_0
    //   463: new android/support/transition/FadePort$3
    //   466: dup
    //   467: aload_0
    //   468: aload #8
    //   470: aload #4
    //   472: iload #5
    //   474: aload #7
    //   476: aload_1
    //   477: invokespecial <init> : (Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V
    //   480: invokespecial createAnimation : (Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    //   483: areturn
    //   484: aconst_null
    //   485: astore #4
    //   487: aconst_null
    //   488: astore #7
    //   490: goto -> 350
    //   493: aconst_null
    //   494: astore #4
    //   496: aconst_null
    //   497: astore #7
    //   499: aconst_null
    //   500: astore #8
    //   502: goto -> 128
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\FadePort.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */