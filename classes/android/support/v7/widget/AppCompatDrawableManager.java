package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SparseArrayCompat;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.util.Log;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class AppCompatDrawableManager {
  private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY;
  
  private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED;
  
  private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL;
  
  private static final AppCompatDrawableManager$ColorFilterLruCache COLOR_FILTER_CACHE;
  
  private static final boolean DEBUG = false;
  
  private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
  
  private static AppCompatDrawableManager INSTANCE;
  
  private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
  
  private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
  
  private static final String TAG = "AppCompatDrawableManager";
  
  private static final int[] TINT_CHECKABLE_BUTTON_LIST;
  
  private static final int[] TINT_COLOR_CONTROL_NORMAL;
  
  private static final int[] TINT_COLOR_CONTROL_STATE_LIST;
  
  private ArrayMap<String, AppCompatDrawableManager$InflateDelegate> mDelegates;
  
  private final Object mDrawableCacheLock = new Object();
  
  private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>>(0);
  
  private boolean mHasCheckedVectorDrawableSetup;
  
  private SparseArrayCompat<String> mKnownDrawableIdTags;
  
  private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> mTintLists;
  
  private TypedValue mTypedValue;
  
  static {
    COLOR_FILTER_CACHE = new AppCompatDrawableManager$ColorFilterLruCache(6);
    COLORFILTER_TINT_COLOR_CONTROL_NORMAL = new int[] { R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha };
    TINT_COLOR_CONTROL_NORMAL = new int[] { R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha };
    COLORFILTER_COLOR_CONTROL_ACTIVATED = new int[] { R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light };
    COLORFILTER_COLOR_BACKGROUND_MULTIPLY = new int[] { R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult };
    TINT_COLOR_CONTROL_STATE_LIST = new int[] { R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material };
    TINT_CHECKABLE_BUTTON_LIST = new int[] { R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material };
  }
  
  private void addDelegate(@NonNull String paramString, @NonNull AppCompatDrawableManager$InflateDelegate paramAppCompatDrawableManager$InflateDelegate) {
    if (this.mDelegates == null)
      this.mDelegates = new ArrayMap(); 
    this.mDelegates.put(paramString, paramAppCompatDrawableManager$InflateDelegate);
  }
  
  private boolean addDrawableToCache(@NonNull Context paramContext, long paramLong, @NonNull Drawable paramDrawable) {
    Drawable.ConstantState constantState = paramDrawable.getConstantState();
    if (constantState != null)
      synchronized (this.mDrawableCacheLock) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray2 = this.mDrawableCaches.get(paramContext);
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray1 = longSparseArray2;
        if (longSparseArray2 == null) {
          longSparseArray1 = new LongSparseArray();
          this.mDrawableCaches.put(paramContext, longSparseArray1);
        } 
        longSparseArray1.put(paramLong, new WeakReference<Drawable.ConstantState>(constantState));
        return true;
      }  
    return false;
  }
  
  private void addTintListToCache(@NonNull Context paramContext, @DrawableRes int paramInt, @NonNull ColorStateList paramColorStateList) {
    if (this.mTintLists == null)
      this.mTintLists = new WeakHashMap<Context, SparseArrayCompat<ColorStateList>>(); 
    SparseArrayCompat<ColorStateList> sparseArrayCompat2 = this.mTintLists.get(paramContext);
    SparseArrayCompat<ColorStateList> sparseArrayCompat1 = sparseArrayCompat2;
    if (sparseArrayCompat2 == null) {
      sparseArrayCompat1 = new SparseArrayCompat();
      this.mTintLists.put(paramContext, sparseArrayCompat1);
    } 
    sparseArrayCompat1.append(paramInt, paramColorStateList);
  }
  
  private static boolean arrayContains(int[] paramArrayOfint, int paramInt) {
    boolean bool = false;
    int j = paramArrayOfint.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (paramArrayOfint[i] == paramInt)
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  private void checkVectorDrawableSetup(@NonNull Context paramContext) {
    if (!this.mHasCheckedVectorDrawableSetup) {
      this.mHasCheckedVectorDrawableSetup = true;
      Drawable drawable = getDrawable(paramContext, R.drawable.abc_vector_test);
      if (drawable == null || !isVectorDrawable(drawable)) {
        this.mHasCheckedVectorDrawableSetup = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
      } 
    } 
  }
  
  private ColorStateList createBorderlessButtonColorStateList(@NonNull Context paramContext) {
    return createButtonColorStateList(paramContext, 0);
  }
  
  private ColorStateList createButtonColorStateList(@NonNull Context paramContext, @ColorInt int paramInt) {
    int k = ThemeUtils.getThemeAttrColor(paramContext, R.attr.colorControlHighlight);
    int i = ThemeUtils.getDisabledThemeAttrColor(paramContext, R.attr.colorButtonNormal);
    int[] arrayOfInt1 = ThemeUtils.DISABLED_STATE_SET;
    int[] arrayOfInt2 = ThemeUtils.PRESSED_STATE_SET;
    int j = ColorUtils.compositeColors(k, paramInt);
    int[] arrayOfInt3 = ThemeUtils.FOCUSED_STATE_SET;
    k = ColorUtils.compositeColors(k, paramInt);
    return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3, ThemeUtils.EMPTY_STATE_SET }, new int[] { i, j, k, paramInt });
  }
  
  private static long createCacheKey(TypedValue paramTypedValue) {
    return paramTypedValue.assetCookie << 32L | paramTypedValue.data;
  }
  
  private ColorStateList createColoredButtonColorStateList(@NonNull Context paramContext) {
    return createButtonColorStateList(paramContext, ThemeUtils.getThemeAttrColor(paramContext, R.attr.colorAccent));
  }
  
  private ColorStateList createDefaultButtonColorStateList(@NonNull Context paramContext) {
    return createButtonColorStateList(paramContext, ThemeUtils.getThemeAttrColor(paramContext, R.attr.colorButtonNormal));
  }
  
  private Drawable createDrawableIfNeeded(@NonNull Context paramContext, @DrawableRes int paramInt) {
    LayerDrawable layerDrawable1;
    if (this.mTypedValue == null)
      this.mTypedValue = new TypedValue(); 
    TypedValue typedValue = this.mTypedValue;
    paramContext.getResources().getValue(paramInt, typedValue, true);
    long l = createCacheKey(typedValue);
    Drawable drawable = getCachedDrawable(paramContext, l);
    if (drawable != null)
      return drawable; 
    if (paramInt == R.drawable.abc_cab_background_top_material)
      layerDrawable1 = new LayerDrawable(new Drawable[] { getDrawable(paramContext, R.drawable.abc_cab_background_internal_bg), getDrawable(paramContext, R.drawable.abc_cab_background_top_mtrl_alpha) }); 
    LayerDrawable layerDrawable2 = layerDrawable1;
    if (layerDrawable1 != null) {
      layerDrawable1.setChangingConfigurations(typedValue.changingConfigurations);
      addDrawableToCache(paramContext, l, (Drawable)layerDrawable1);
      return (Drawable)layerDrawable1;
    } 
    return (Drawable)layerDrawable2;
  }
  
  private static PorterDuffColorFilter createTintFilter(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int[] paramArrayOfint) {
    return (paramColorStateList == null || paramMode == null) ? null : getPorterDuffColorFilter(paramColorStateList.getColorForState(paramArrayOfint, 0), paramMode);
  }
  
  public static AppCompatDrawableManager get() {
    if (INSTANCE == null) {
      INSTANCE = new AppCompatDrawableManager();
      installDefaultInflateDelegates(INSTANCE);
    } 
    return INSTANCE;
  }
  
  private Drawable getCachedDrawable(@NonNull Context paramContext, long paramLong) {
    synchronized (this.mDrawableCacheLock) {
      LongSparseArray longSparseArray = this.mDrawableCaches.get(paramContext);
      if (longSparseArray == null)
        return null; 
      WeakReference<Drawable.ConstantState> weakReference = (WeakReference)longSparseArray.get(paramLong);
      if (weakReference != null) {
        Drawable.ConstantState constantState = weakReference.get();
        if (constantState != null)
          return constantState.newDrawable(paramContext.getResources()); 
        longSparseArray.delete(paramLong);
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_4} */
    return null;
  }
  
  public static PorterDuffColorFilter getPorterDuffColorFilter(int paramInt, PorterDuff.Mode paramMode) {
    PorterDuffColorFilter porterDuffColorFilter2 = COLOR_FILTER_CACHE.get(paramInt, paramMode);
    PorterDuffColorFilter porterDuffColorFilter1 = porterDuffColorFilter2;
    if (porterDuffColorFilter2 == null) {
      porterDuffColorFilter1 = new PorterDuffColorFilter(paramInt, paramMode);
      COLOR_FILTER_CACHE.put(paramInt, paramMode, porterDuffColorFilter1);
    } 
    return porterDuffColorFilter1;
  }
  
  private ColorStateList getTintListFromCache(@NonNull Context paramContext, @DrawableRes int paramInt) {
    if (this.mTintLists != null) {
      SparseArrayCompat sparseArrayCompat = this.mTintLists.get(paramContext);
      return (sparseArrayCompat != null) ? (ColorStateList)sparseArrayCompat.get(paramInt) : null;
    } 
    return null;
  }
  
  static PorterDuff.Mode getTintMode(int paramInt) {
    PorterDuff.Mode mode = null;
    if (paramInt == R.drawable.abc_switch_thumb_material)
      mode = PorterDuff.Mode.MULTIPLY; 
    return mode;
  }
  
  private static void installDefaultInflateDelegates(@NonNull AppCompatDrawableManager paramAppCompatDrawableManager) {
    if (Build.VERSION.SDK_INT < 24) {
      paramAppCompatDrawableManager.addDelegate("vector", new AppCompatDrawableManager$VdcInflateDelegate());
      if (Build.VERSION.SDK_INT >= 11)
        paramAppCompatDrawableManager.addDelegate("animated-vector", new AppCompatDrawableManager$AvdcInflateDelegate()); 
    } 
  }
  
  private static boolean isVectorDrawable(@NonNull Drawable paramDrawable) {
    return (paramDrawable instanceof android.support.graphics.drawable.VectorDrawableCompat || "android.graphics.drawable.VectorDrawable".equals(paramDrawable.getClass().getName()));
  }
  
  private Drawable loadDrawableFromDelegates(@NonNull Context paramContext, @DrawableRes int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mDelegates : Landroid/support/v4/util/ArrayMap;
    //   4: ifnull -> 398
    //   7: aload_0
    //   8: getfield mDelegates : Landroid/support/v4/util/ArrayMap;
    //   11: invokevirtual isEmpty : ()Z
    //   14: ifne -> 398
    //   17: aload_0
    //   18: getfield mKnownDrawableIdTags : Landroid/support/v4/util/SparseArrayCompat;
    //   21: ifnull -> 70
    //   24: aload_0
    //   25: getfield mKnownDrawableIdTags : Landroid/support/v4/util/SparseArrayCompat;
    //   28: iload_2
    //   29: invokevirtual get : (I)Ljava/lang/Object;
    //   32: checkcast java/lang/String
    //   35: astore #7
    //   37: ldc 'appcompat_skip_skip'
    //   39: aload #7
    //   41: invokevirtual equals : (Ljava/lang/Object;)Z
    //   44: ifne -> 64
    //   47: aload #7
    //   49: ifnull -> 81
    //   52: aload_0
    //   53: getfield mDelegates : Landroid/support/v4/util/ArrayMap;
    //   56: aload #7
    //   58: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   61: ifnonnull -> 81
    //   64: aconst_null
    //   65: astore #7
    //   67: aload #7
    //   69: areturn
    //   70: aload_0
    //   71: new android/support/v4/util/SparseArrayCompat
    //   74: dup
    //   75: invokespecial <init> : ()V
    //   78: putfield mKnownDrawableIdTags : Landroid/support/v4/util/SparseArrayCompat;
    //   81: aload_0
    //   82: getfield mTypedValue : Landroid/util/TypedValue;
    //   85: ifnonnull -> 99
    //   88: aload_0
    //   89: new android/util/TypedValue
    //   92: dup
    //   93: invokespecial <init> : ()V
    //   96: putfield mTypedValue : Landroid/util/TypedValue;
    //   99: aload_0
    //   100: getfield mTypedValue : Landroid/util/TypedValue;
    //   103: astore #10
    //   105: aload_1
    //   106: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   109: astore #7
    //   111: aload #7
    //   113: iload_2
    //   114: aload #10
    //   116: iconst_1
    //   117: invokevirtual getValue : (ILandroid/util/TypedValue;Z)V
    //   120: aload #10
    //   122: invokestatic createCacheKey : (Landroid/util/TypedValue;)J
    //   125: lstore #4
    //   127: aload_0
    //   128: aload_1
    //   129: lload #4
    //   131: invokespecial getCachedDrawable : (Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    //   134: astore #9
    //   136: aload #9
    //   138: ifnull -> 144
    //   141: aload #9
    //   143: areturn
    //   144: aload #9
    //   146: astore #8
    //   148: aload #10
    //   150: getfield string : Ljava/lang/CharSequence;
    //   153: ifnull -> 255
    //   156: aload #9
    //   158: astore #8
    //   160: aload #10
    //   162: getfield string : Ljava/lang/CharSequence;
    //   165: invokeinterface toString : ()Ljava/lang/String;
    //   170: ldc_w '.xml'
    //   173: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   176: ifeq -> 255
    //   179: aload #9
    //   181: astore #8
    //   183: aload #7
    //   185: iload_2
    //   186: invokevirtual getXml : (I)Landroid/content/res/XmlResourceParser;
    //   189: astore #11
    //   191: aload #9
    //   193: astore #8
    //   195: aload #11
    //   197: invokestatic asAttributeSet : (Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   200: astore #12
    //   202: aload #9
    //   204: astore #8
    //   206: aload #11
    //   208: invokeinterface next : ()I
    //   213: istore_3
    //   214: iload_3
    //   215: iconst_2
    //   216: if_icmpeq -> 224
    //   219: iload_3
    //   220: iconst_1
    //   221: if_icmpne -> 202
    //   224: iload_3
    //   225: iconst_2
    //   226: if_icmpeq -> 277
    //   229: aload #9
    //   231: astore #8
    //   233: new org/xmlpull/v1/XmlPullParserException
    //   236: dup
    //   237: ldc_w 'No start tag found'
    //   240: invokespecial <init> : (Ljava/lang/String;)V
    //   243: athrow
    //   244: astore_1
    //   245: ldc 'AppCompatDrawableManager'
    //   247: ldc_w 'Exception while inflating drawable'
    //   250: aload_1
    //   251: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   254: pop
    //   255: aload #8
    //   257: astore_1
    //   258: aload_1
    //   259: astore #7
    //   261: aload_1
    //   262: ifnonnull -> 67
    //   265: aload_0
    //   266: getfield mKnownDrawableIdTags : Landroid/support/v4/util/SparseArrayCompat;
    //   269: iload_2
    //   270: ldc 'appcompat_skip_skip'
    //   272: invokevirtual append : (ILjava/lang/Object;)V
    //   275: aload_1
    //   276: areturn
    //   277: aload #9
    //   279: astore #8
    //   281: aload #11
    //   283: invokeinterface getName : ()Ljava/lang/String;
    //   288: astore #7
    //   290: aload #9
    //   292: astore #8
    //   294: aload_0
    //   295: getfield mKnownDrawableIdTags : Landroid/support/v4/util/SparseArrayCompat;
    //   298: iload_2
    //   299: aload #7
    //   301: invokevirtual append : (ILjava/lang/Object;)V
    //   304: aload #9
    //   306: astore #8
    //   308: aload_0
    //   309: getfield mDelegates : Landroid/support/v4/util/ArrayMap;
    //   312: aload #7
    //   314: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   317: checkcast android/support/v7/widget/AppCompatDrawableManager$InflateDelegate
    //   320: astore #13
    //   322: aload #9
    //   324: astore #7
    //   326: aload #13
    //   328: ifnull -> 353
    //   331: aload #9
    //   333: astore #8
    //   335: aload #13
    //   337: aload_1
    //   338: aload #11
    //   340: aload #12
    //   342: aload_1
    //   343: invokevirtual getTheme : ()Landroid/content/res/Resources$Theme;
    //   346: invokeinterface createFromXmlInner : (Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    //   351: astore #7
    //   353: aload #7
    //   355: ifnull -> 392
    //   358: aload #7
    //   360: astore #8
    //   362: aload #7
    //   364: aload #10
    //   366: getfield changingConfigurations : I
    //   369: invokevirtual setChangingConfigurations : (I)V
    //   372: aload #7
    //   374: astore #8
    //   376: aload_0
    //   377: aload_1
    //   378: lload #4
    //   380: aload #7
    //   382: invokespecial addDrawableToCache : (Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    //   385: istore #6
    //   387: iload #6
    //   389: ifeq -> 392
    //   392: aload #7
    //   394: astore_1
    //   395: goto -> 258
    //   398: aconst_null
    //   399: areturn
    // Exception table:
    //   from	to	target	type
    //   183	191	244	java/lang/Exception
    //   195	202	244	java/lang/Exception
    //   206	214	244	java/lang/Exception
    //   233	244	244	java/lang/Exception
    //   281	290	244	java/lang/Exception
    //   294	304	244	java/lang/Exception
    //   308	322	244	java/lang/Exception
    //   335	353	244	java/lang/Exception
    //   362	372	244	java/lang/Exception
    //   376	387	244	java/lang/Exception
  }
  
  private void removeDelegate(@NonNull String paramString, @NonNull AppCompatDrawableManager$InflateDelegate paramAppCompatDrawableManager$InflateDelegate) {
    if (this.mDelegates != null && this.mDelegates.get(paramString) == paramAppCompatDrawableManager$InflateDelegate)
      this.mDelegates.remove(paramString); 
  }
  
  private static void setPorterDuffColorFilter(Drawable paramDrawable, int paramInt, PorterDuff.Mode paramMode) {
    Drawable drawable = paramDrawable;
    if (DrawableUtils.canSafelyMutateDrawable(paramDrawable))
      drawable = paramDrawable.mutate(); 
    PorterDuff.Mode mode = paramMode;
    if (paramMode == null)
      mode = DEFAULT_MODE; 
    drawable.setColorFilter((ColorFilter)getPorterDuffColorFilter(paramInt, mode));
  }
  
  private Drawable tintDrawable(@NonNull Context paramContext, @DrawableRes int paramInt, boolean paramBoolean, @NonNull Drawable paramDrawable) {
    Drawable drawable;
    PorterDuff.Mode mode1;
    ColorStateList colorStateList = getTintList(paramContext, paramInt);
    if (colorStateList != null) {
      drawable = paramDrawable;
      if (DrawableUtils.canSafelyMutateDrawable(paramDrawable))
        drawable = paramDrawable.mutate(); 
      drawable = DrawableCompat.wrap(drawable);
      DrawableCompat.setTintList(drawable, colorStateList);
      mode1 = getTintMode(paramInt);
      Drawable drawable1 = drawable;
      if (mode1 != null) {
        DrawableCompat.setTintMode(drawable, mode1);
        drawable1 = drawable;
      } 
      return drawable1;
    } 
    if (paramInt == R.drawable.abc_seekbar_track_material) {
      LayerDrawable layerDrawable = (LayerDrawable)mode1;
      setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908288), ThemeUtils.getThemeAttrColor((Context)drawable, R.attr.colorControlNormal), DEFAULT_MODE);
      setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor((Context)drawable, R.attr.colorControlNormal), DEFAULT_MODE);
      setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor((Context)drawable, R.attr.colorControlActivated), DEFAULT_MODE);
      return (Drawable)mode1;
    } 
    if (paramInt == R.drawable.abc_ratingbar_material || paramInt == R.drawable.abc_ratingbar_indicator_material || paramInt == R.drawable.abc_ratingbar_small_material) {
      LayerDrawable layerDrawable = (LayerDrawable)mode1;
      setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908288), ThemeUtils.getDisabledThemeAttrColor((Context)drawable, R.attr.colorControlNormal), DEFAULT_MODE);
      setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor((Context)drawable, R.attr.colorControlActivated), DEFAULT_MODE);
      setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor((Context)drawable, R.attr.colorControlActivated), DEFAULT_MODE);
      return (Drawable)mode1;
    } 
    PorterDuff.Mode mode2 = mode1;
    if (!tintDrawableUsingColorFilter((Context)drawable, paramInt, (Drawable)mode1)) {
      mode2 = mode1;
      if (paramBoolean)
        return null; 
    } 
    return (Drawable)mode2;
  }
  
  static void tintDrawable(Drawable paramDrawable, TintInfo paramTintInfo, int[] paramArrayOfint) {
    if (DrawableUtils.canSafelyMutateDrawable(paramDrawable) && paramDrawable.mutate() != paramDrawable) {
      Log.d("AppCompatDrawableManager", "Mutated drawable is not the same instance as the input.");
      return;
    } 
    if (paramTintInfo.mHasTintList || paramTintInfo.mHasTintMode) {
      PorterDuff.Mode mode;
      ColorStateList colorStateList;
      if (paramTintInfo.mHasTintList) {
        colorStateList = paramTintInfo.mTintList;
      } else {
        colorStateList = null;
      } 
      if (paramTintInfo.mHasTintMode) {
        mode = paramTintInfo.mTintMode;
      } else {
        mode = DEFAULT_MODE;
      } 
      paramDrawable.setColorFilter((ColorFilter)createTintFilter(colorStateList, mode, paramArrayOfint));
    } else {
      paramDrawable.clearColorFilter();
    } 
    if (Build.VERSION.SDK_INT <= 23) {
      paramDrawable.invalidateSelf();
      return;
    } 
  }
  
  static boolean tintDrawableUsingColorFilter(@NonNull Context paramContext, @DrawableRes int paramInt, @NonNull Drawable paramDrawable) {
    boolean bool1;
    boolean bool2;
    PorterDuff.Mode mode = DEFAULT_MODE;
    if (arrayContains(COLORFILTER_TINT_COLOR_CONTROL_NORMAL, paramInt)) {
      bool1 = R.attr.colorControlNormal;
      bool2 = true;
      paramInt = -1;
    } else if (arrayContains(COLORFILTER_COLOR_CONTROL_ACTIVATED, paramInt)) {
      bool1 = R.attr.colorControlActivated;
      bool2 = true;
      paramInt = -1;
    } else if (arrayContains(COLORFILTER_COLOR_BACKGROUND_MULTIPLY, paramInt)) {
      mode = PorterDuff.Mode.MULTIPLY;
      bool2 = true;
      bool1 = true;
      paramInt = -1;
    } else if (paramInt == R.drawable.abc_list_divider_mtrl_alpha) {
      bool1 = true;
      paramInt = Math.round(40.8F);
      bool2 = true;
    } else if (paramInt == R.drawable.abc_dialog_material_background) {
      bool1 = true;
      bool2 = true;
      paramInt = -1;
    } else {
      paramInt = -1;
      bool1 = false;
      bool2 = false;
    } 
    if (bool2) {
      Drawable drawable = paramDrawable;
      if (DrawableUtils.canSafelyMutateDrawable(paramDrawable))
        drawable = paramDrawable.mutate(); 
      drawable.setColorFilter((ColorFilter)getPorterDuffColorFilter(ThemeUtils.getThemeAttrColor(paramContext, bool1), mode));
      if (paramInt != -1)
        drawable.setAlpha(paramInt); 
      return true;
    } 
    return false;
  }
  
  public Drawable getDrawable(@NonNull Context paramContext, @DrawableRes int paramInt) {
    return getDrawable(paramContext, paramInt, false);
  }
  
  Drawable getDrawable(@NonNull Context paramContext, @DrawableRes int paramInt, boolean paramBoolean) {
    checkVectorDrawableSetup(paramContext);
    Drawable drawable2 = loadDrawableFromDelegates(paramContext, paramInt);
    Drawable drawable1 = drawable2;
    if (drawable2 == null)
      drawable1 = createDrawableIfNeeded(paramContext, paramInt); 
    drawable2 = drawable1;
    if (drawable1 == null)
      drawable2 = ContextCompat.getDrawable(paramContext, paramInt); 
    drawable1 = drawable2;
    if (drawable2 != null)
      drawable1 = tintDrawable(paramContext, paramInt, paramBoolean, drawable2); 
    if (drawable1 != null)
      DrawableUtils.fixDrawable(drawable1); 
    return drawable1;
  }
  
  ColorStateList getTintList(@NonNull Context paramContext, @DrawableRes int paramInt) {
    ColorStateList colorStateList1 = getTintListFromCache(paramContext, paramInt);
    ColorStateList colorStateList2 = colorStateList1;
    if (colorStateList1 == null) {
      if (paramInt == R.drawable.abc_edit_text_material) {
        colorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_edittext);
      } else if (paramInt == R.drawable.abc_switch_track_mtrl_alpha) {
        colorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_switch_track);
      } else if (paramInt == R.drawable.abc_switch_thumb_material) {
        colorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_switch_thumb);
      } else if (paramInt == R.drawable.abc_btn_default_mtrl_shape) {
        colorStateList1 = createDefaultButtonColorStateList(paramContext);
      } else if (paramInt == R.drawable.abc_btn_borderless_material) {
        colorStateList1 = createBorderlessButtonColorStateList(paramContext);
      } else if (paramInt == R.drawable.abc_btn_colored_material) {
        colorStateList1 = createColoredButtonColorStateList(paramContext);
      } else if (paramInt == R.drawable.abc_spinner_mtrl_am_alpha || paramInt == R.drawable.abc_spinner_textfield_background_material) {
        colorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_spinner);
      } else if (arrayContains(TINT_COLOR_CONTROL_NORMAL, paramInt)) {
        colorStateList1 = ThemeUtils.getThemeAttrColorStateList(paramContext, R.attr.colorControlNormal);
      } else if (arrayContains(TINT_COLOR_CONTROL_STATE_LIST, paramInt)) {
        colorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_default);
      } else if (arrayContains(TINT_CHECKABLE_BUTTON_LIST, paramInt)) {
        colorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_btn_checkable);
      } else if (paramInt == R.drawable.abc_seekbar_thumb_material) {
        colorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_seek_thumb);
      } 
      colorStateList2 = colorStateList1;
      if (colorStateList1 != null) {
        addTintListToCache(paramContext, paramInt, colorStateList1);
        colorStateList2 = colorStateList1;
      } 
    } 
    return colorStateList2;
  }
  
  public void onConfigurationChanged(@NonNull Context paramContext) {
    synchronized (this.mDrawableCacheLock) {
      LongSparseArray longSparseArray = this.mDrawableCaches.get(paramContext);
      if (longSparseArray != null)
        longSparseArray.clear(); 
      return;
    } 
  }
  
  Drawable onDrawableLoadedFromResources(@NonNull Context paramContext, @NonNull VectorEnabledTintResources paramVectorEnabledTintResources, @DrawableRes int paramInt) {
    Drawable drawable2 = loadDrawableFromDelegates(paramContext, paramInt);
    Drawable drawable1 = drawable2;
    if (drawable2 == null)
      drawable1 = paramVectorEnabledTintResources.superGetDrawable(paramInt); 
    return (drawable1 != null) ? tintDrawable(paramContext, paramInt, false, drawable1) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatDrawableManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */