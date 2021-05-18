package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.ContextThemeWrapper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.Map;

class AppCompatViewInflater {
  private static final String LOG_TAG = "AppCompatViewInflater";
  
  private static final String[] sClassPrefixList;
  
  private static final Map<String, Constructor<? extends View>> sConstructorMap;
  
  private static final Class<?>[] sConstructorSignature = new Class[] { Context.class, AttributeSet.class };
  
  private static final int[] sOnClickAttrs = new int[] { 16843375 };
  
  private final Object[] mConstructorArgs = new Object[2];
  
  static {
    sClassPrefixList = new String[] { "android.widget.", "android.view.", "android.webkit." };
    sConstructorMap = (Map<String, Constructor<? extends View>>)new ArrayMap();
  }
  
  private void checkOnClickListener(View paramView, AttributeSet paramAttributeSet) {
    Context context = paramView.getContext();
    if (!(context instanceof android.content.ContextWrapper) || (Build.VERSION.SDK_INT >= 15 && !ViewCompat.hasOnClickListeners(paramView)))
      return; 
    TypedArray typedArray = context.obtainStyledAttributes(paramAttributeSet, sOnClickAttrs);
    String str = typedArray.getString(0);
    if (str != null)
      paramView.setOnClickListener(new AppCompatViewInflater$DeclaredOnClickListener(paramView, str)); 
    typedArray.recycle();
  }
  
  private View createView(Context paramContext, String paramString1, String paramString2) {
    Constructor constructor1 = sConstructorMap.get(paramString1);
    Constructor<? extends View> constructor = constructor1;
    if (constructor1 == null)
      try {
        String str;
        ClassLoader classLoader = paramContext.getClassLoader();
        if (paramString2 != null) {
          str = paramString2 + paramString1;
        } else {
          str = paramString1;
        } 
        constructor = classLoader.loadClass(str).<View>asSubclass(View.class).getConstructor(sConstructorSignature);
        sConstructorMap.put(paramString1, constructor);
        constructor.setAccessible(true);
        return constructor.newInstance(this.mConstructorArgs);
      } catch (Exception exception) {
        return null;
      }  
    constructor.setAccessible(true);
    return constructor.newInstance(this.mConstructorArgs);
  }
  
  private View createViewFromTag(Context paramContext, String paramString, AttributeSet paramAttributeSet) {
    String str = paramString;
    if (paramString.equals("view"))
      str = paramAttributeSet.getAttributeValue(null, "class"); 
    try {
      this.mConstructorArgs[0] = paramContext;
      this.mConstructorArgs[1] = paramAttributeSet;
      if (-1 == str.indexOf('.')) {
        int i;
        for (i = 0; i < sClassPrefixList.length; i++) {
          View view = createView(paramContext, str, sClassPrefixList[i]);
          if (view != null)
            return view; 
        } 
        return null;
      } 
      return createView(paramContext, str, null);
    } catch (Exception exception) {
      return null;
    } finally {
      this.mConstructorArgs[0] = null;
      this.mConstructorArgs[1] = null;
    } 
  }
  
  private static Context themifyContext(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2) {
    int i;
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.View, 0, 0);
    if (paramBoolean1) {
      i = typedArray.getResourceId(R.styleable.View_android_theme, 0);
    } else {
      i = 0;
    } 
    int j = i;
    if (paramBoolean2) {
      j = i;
      if (!i) {
        i = typedArray.getResourceId(R.styleable.View_theme, 0);
        j = i;
        if (i != 0) {
          Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
          j = i;
        } 
      } 
    } 
    typedArray.recycle();
    Context context = paramContext;
    if (j != 0) {
      if (paramContext instanceof ContextThemeWrapper) {
        context = paramContext;
        return (Context)((((ContextThemeWrapper)paramContext).getThemeResId() != j) ? new ContextThemeWrapper(paramContext, j) : context);
      } 
    } else {
      return context;
    } 
    return (Context)new ContextThemeWrapper(paramContext, j);
  }
  
  public final View createView(View paramView, String paramString, @NonNull Context paramContext, @NonNull AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4) {
    // Byte code:
    //   0: iload #5
    //   2: ifeq -> 677
    //   5: aload_1
    //   6: ifnull -> 677
    //   9: aload_1
    //   10: invokevirtual getContext : ()Landroid/content/Context;
    //   13: astore #10
    //   15: iload #6
    //   17: ifne -> 28
    //   20: aload #10
    //   22: astore_1
    //   23: iload #7
    //   25: ifeq -> 40
    //   28: aload #10
    //   30: aload #4
    //   32: iload #6
    //   34: iload #7
    //   36: invokestatic themifyContext : (Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    //   39: astore_1
    //   40: aload_1
    //   41: astore #10
    //   43: iload #8
    //   45: ifeq -> 54
    //   48: aload_1
    //   49: invokestatic wrap : (Landroid/content/Context;)Landroid/content/Context;
    //   52: astore #10
    //   54: aconst_null
    //   55: astore_1
    //   56: iconst_m1
    //   57: istore #9
    //   59: aload_2
    //   60: invokevirtual hashCode : ()I
    //   63: lookupswitch default -> 176, -1946472170 -> 447, -1455429095 -> 399, -1346021293 -> 431, -938935918 -> 277, -937446323 -> 352, -658531749 -> 463, -339785223 -> 337, 776382189 -> 383, 1125864064 -> 292, 1413872058 -> 415, 1601505219 -> 367, 1666676343 -> 322, 2001146706 -> 307
    //   176: iload #9
    //   178: tableswitch default -> 244, 0 -> 479, 1 -> 494, 2 -> 509, 3 -> 524, 4 -> 539, 5 -> 554, 6 -> 569, 7 -> 584, 8 -> 599, 9 -> 614, 10 -> 629, 11 -> 644, 12 -> 659
    //   244: aload_1
    //   245: ifnonnull -> 674
    //   248: aload_3
    //   249: aload #10
    //   251: if_acmpeq -> 674
    //   254: aload_0
    //   255: aload #10
    //   257: aload_2
    //   258: aload #4
    //   260: invokespecial createViewFromTag : (Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    //   263: astore_1
    //   264: aload_1
    //   265: ifnull -> 275
    //   268: aload_0
    //   269: aload_1
    //   270: aload #4
    //   272: invokespecial checkOnClickListener : (Landroid/view/View;Landroid/util/AttributeSet;)V
    //   275: aload_1
    //   276: areturn
    //   277: aload_2
    //   278: ldc 'TextView'
    //   280: invokevirtual equals : (Ljava/lang/Object;)Z
    //   283: ifeq -> 176
    //   286: iconst_0
    //   287: istore #9
    //   289: goto -> 176
    //   292: aload_2
    //   293: ldc 'ImageView'
    //   295: invokevirtual equals : (Ljava/lang/Object;)Z
    //   298: ifeq -> 176
    //   301: iconst_1
    //   302: istore #9
    //   304: goto -> 176
    //   307: aload_2
    //   308: ldc 'Button'
    //   310: invokevirtual equals : (Ljava/lang/Object;)Z
    //   313: ifeq -> 176
    //   316: iconst_2
    //   317: istore #9
    //   319: goto -> 176
    //   322: aload_2
    //   323: ldc 'EditText'
    //   325: invokevirtual equals : (Ljava/lang/Object;)Z
    //   328: ifeq -> 176
    //   331: iconst_3
    //   332: istore #9
    //   334: goto -> 176
    //   337: aload_2
    //   338: ldc 'Spinner'
    //   340: invokevirtual equals : (Ljava/lang/Object;)Z
    //   343: ifeq -> 176
    //   346: iconst_4
    //   347: istore #9
    //   349: goto -> 176
    //   352: aload_2
    //   353: ldc 'ImageButton'
    //   355: invokevirtual equals : (Ljava/lang/Object;)Z
    //   358: ifeq -> 176
    //   361: iconst_5
    //   362: istore #9
    //   364: goto -> 176
    //   367: aload_2
    //   368: ldc 'CheckBox'
    //   370: invokevirtual equals : (Ljava/lang/Object;)Z
    //   373: ifeq -> 176
    //   376: bipush #6
    //   378: istore #9
    //   380: goto -> 176
    //   383: aload_2
    //   384: ldc 'RadioButton'
    //   386: invokevirtual equals : (Ljava/lang/Object;)Z
    //   389: ifeq -> 176
    //   392: bipush #7
    //   394: istore #9
    //   396: goto -> 176
    //   399: aload_2
    //   400: ldc 'CheckedTextView'
    //   402: invokevirtual equals : (Ljava/lang/Object;)Z
    //   405: ifeq -> 176
    //   408: bipush #8
    //   410: istore #9
    //   412: goto -> 176
    //   415: aload_2
    //   416: ldc 'AutoCompleteTextView'
    //   418: invokevirtual equals : (Ljava/lang/Object;)Z
    //   421: ifeq -> 176
    //   424: bipush #9
    //   426: istore #9
    //   428: goto -> 176
    //   431: aload_2
    //   432: ldc 'MultiAutoCompleteTextView'
    //   434: invokevirtual equals : (Ljava/lang/Object;)Z
    //   437: ifeq -> 176
    //   440: bipush #10
    //   442: istore #9
    //   444: goto -> 176
    //   447: aload_2
    //   448: ldc 'RatingBar'
    //   450: invokevirtual equals : (Ljava/lang/Object;)Z
    //   453: ifeq -> 176
    //   456: bipush #11
    //   458: istore #9
    //   460: goto -> 176
    //   463: aload_2
    //   464: ldc 'SeekBar'
    //   466: invokevirtual equals : (Ljava/lang/Object;)Z
    //   469: ifeq -> 176
    //   472: bipush #12
    //   474: istore #9
    //   476: goto -> 176
    //   479: new android/support/v7/widget/AppCompatTextView
    //   482: dup
    //   483: aload #10
    //   485: aload #4
    //   487: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   490: astore_1
    //   491: goto -> 244
    //   494: new android/support/v7/widget/AppCompatImageView
    //   497: dup
    //   498: aload #10
    //   500: aload #4
    //   502: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   505: astore_1
    //   506: goto -> 244
    //   509: new android/support/v7/widget/AppCompatButton
    //   512: dup
    //   513: aload #10
    //   515: aload #4
    //   517: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   520: astore_1
    //   521: goto -> 244
    //   524: new android/support/v7/widget/AppCompatEditText
    //   527: dup
    //   528: aload #10
    //   530: aload #4
    //   532: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   535: astore_1
    //   536: goto -> 244
    //   539: new android/support/v7/widget/AppCompatSpinner
    //   542: dup
    //   543: aload #10
    //   545: aload #4
    //   547: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   550: astore_1
    //   551: goto -> 244
    //   554: new android/support/v7/widget/AppCompatImageButton
    //   557: dup
    //   558: aload #10
    //   560: aload #4
    //   562: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   565: astore_1
    //   566: goto -> 244
    //   569: new android/support/v7/widget/AppCompatCheckBox
    //   572: dup
    //   573: aload #10
    //   575: aload #4
    //   577: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   580: astore_1
    //   581: goto -> 244
    //   584: new android/support/v7/widget/AppCompatRadioButton
    //   587: dup
    //   588: aload #10
    //   590: aload #4
    //   592: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   595: astore_1
    //   596: goto -> 244
    //   599: new android/support/v7/widget/AppCompatCheckedTextView
    //   602: dup
    //   603: aload #10
    //   605: aload #4
    //   607: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   610: astore_1
    //   611: goto -> 244
    //   614: new android/support/v7/widget/AppCompatAutoCompleteTextView
    //   617: dup
    //   618: aload #10
    //   620: aload #4
    //   622: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   625: astore_1
    //   626: goto -> 244
    //   629: new android/support/v7/widget/AppCompatMultiAutoCompleteTextView
    //   632: dup
    //   633: aload #10
    //   635: aload #4
    //   637: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   640: astore_1
    //   641: goto -> 244
    //   644: new android/support/v7/widget/AppCompatRatingBar
    //   647: dup
    //   648: aload #10
    //   650: aload #4
    //   652: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   655: astore_1
    //   656: goto -> 244
    //   659: new android/support/v7/widget/AppCompatSeekBar
    //   662: dup
    //   663: aload #10
    //   665: aload #4
    //   667: invokespecial <init> : (Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   670: astore_1
    //   671: goto -> 244
    //   674: goto -> 264
    //   677: aload_3
    //   678: astore #10
    //   680: goto -> 15
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatViewInflater.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */