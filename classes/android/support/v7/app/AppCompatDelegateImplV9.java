package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.app.NavUtils;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.StandaloneActionMode;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.DecorContentParent;
import android.support.v7.widget.FitWindowsViewGroup;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.VectorEnabledTintResources;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.ViewUtils;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import org.xmlpull.v1.XmlPullParser;

@TargetApi(9)
@RequiresApi(9)
class AppCompatDelegateImplV9 extends AppCompatDelegateImplBase implements LayoutInflaterFactory, MenuBuilder.Callback {
  private static final boolean IS_PRE_LOLLIPOP;
  
  private AppCompatDelegateImplV9$ActionMenuPresenterCallback mActionMenuPresenterCallback;
  
  ActionMode mActionMode;
  
  PopupWindow mActionModePopup;
  
  ActionBarContextView mActionModeView;
  
  private AppCompatViewInflater mAppCompatViewInflater;
  
  private boolean mClosingActionMenu;
  
  private DecorContentParent mDecorContentParent;
  
  private boolean mEnableDefaultActionBarUp;
  
  ViewPropertyAnimatorCompat mFadeAnim = null;
  
  private boolean mFeatureIndeterminateProgress;
  
  private boolean mFeatureProgress;
  
  int mInvalidatePanelMenuFeatures;
  
  boolean mInvalidatePanelMenuPosted;
  
  private final Runnable mInvalidatePanelMenuRunnable = new AppCompatDelegateImplV9$1(this);
  
  private boolean mLongPressBackDown;
  
  private AppCompatDelegateImplV9$PanelMenuPresenterCallback mPanelMenuPresenterCallback;
  
  private AppCompatDelegateImplV9$PanelFeatureState[] mPanels;
  
  private AppCompatDelegateImplV9$PanelFeatureState mPreparedPanel;
  
  Runnable mShowActionModePopup;
  
  private View mStatusGuard;
  
  private ViewGroup mSubDecor;
  
  private boolean mSubDecorInstalled;
  
  private Rect mTempRect1;
  
  private Rect mTempRect2;
  
  private TextView mTitleView;
  
  static {
    boolean bool;
    if (Build.VERSION.SDK_INT < 21) {
      bool = true;
    } else {
      bool = false;
    } 
    IS_PRE_LOLLIPOP = bool;
  }
  
  AppCompatDelegateImplV9(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback) {
    super(paramContext, paramWindow, paramAppCompatCallback);
  }
  
  private void applyFixedSizeWindow() {
    ContentFrameLayout contentFrameLayout = (ContentFrameLayout)this.mSubDecor.findViewById(16908290);
    View view = this.mWindow.getDecorView();
    contentFrameLayout.setDecorPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
    TypedArray typedArray = this.mContext.obtainStyledAttributes(R.styleable.AppCompatTheme);
    typedArray.getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
    typedArray.getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
    if (typedArray.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMajor))
      typedArray.getValue(R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor()); 
    if (typedArray.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMinor))
      typedArray.getValue(R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor()); 
    if (typedArray.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMajor))
      typedArray.getValue(R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor()); 
    if (typedArray.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMinor))
      typedArray.getValue(R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor()); 
    typedArray.recycle();
    contentFrameLayout.requestLayout();
  }
  
  private ViewGroup createSubDecor() {
    ViewGroup viewGroup1;
    TypedArray typedArray = this.mContext.obtainStyledAttributes(R.styleable.AppCompatTheme);
    if (!typedArray.hasValue(R.styleable.AppCompatTheme_windowActionBar)) {
      typedArray.recycle();
      throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    } 
    if (typedArray.getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
      requestWindowFeature(1);
    } else if (typedArray.getBoolean(R.styleable.AppCompatTheme_windowActionBar, false)) {
      requestWindowFeature(108);
    } 
    if (typedArray.getBoolean(R.styleable.AppCompatTheme_windowActionBarOverlay, false))
      requestWindowFeature(109); 
    if (typedArray.getBoolean(R.styleable.AppCompatTheme_windowActionModeOverlay, false))
      requestWindowFeature(10); 
    this.mIsFloating = typedArray.getBoolean(R.styleable.AppCompatTheme_android_windowIsFloating, false);
    typedArray.recycle();
    this.mWindow.getDecorView();
    LayoutInflater layoutInflater = LayoutInflater.from(this.mContext);
    if (!this.mWindowNoTitle) {
      if (this.mIsFloating) {
        viewGroup1 = (ViewGroup)layoutInflater.inflate(R.layout.abc_dialog_title_material, null);
        this.mOverlayActionBar = false;
        this.mHasActionBar = false;
      } else if (this.mHasActionBar) {
        Context context;
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
        if (typedValue.resourceId != 0) {
          ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.mContext, typedValue.resourceId);
        } else {
          context = this.mContext;
        } 
        viewGroup1 = (ViewGroup)LayoutInflater.from(context).inflate(R.layout.abc_screen_toolbar, null);
        this.mDecorContentParent = (DecorContentParent)viewGroup1.findViewById(R.id.decor_content_parent);
        this.mDecorContentParent.setWindowCallback(getWindowCallback());
        if (this.mOverlayActionBar)
          this.mDecorContentParent.initFeature(109); 
        if (this.mFeatureProgress)
          this.mDecorContentParent.initFeature(2); 
        if (this.mFeatureIndeterminateProgress)
          this.mDecorContentParent.initFeature(5); 
      } else {
        layoutInflater = null;
      } 
    } else {
      if (this.mOverlayActionMode) {
        viewGroup1 = (ViewGroup)layoutInflater.inflate(R.layout.abc_screen_simple_overlay_action_mode, null);
      } else {
        viewGroup1 = (ViewGroup)viewGroup1.inflate(R.layout.abc_screen_simple, null);
      } 
      if (Build.VERSION.SDK_INT >= 21) {
        ViewCompat.setOnApplyWindowInsetsListener((View)viewGroup1, new AppCompatDelegateImplV9$2(this));
      } else {
        ((FitWindowsViewGroup)viewGroup1).setOnFitSystemWindowsListener(new AppCompatDelegateImplV9$3(this));
      } 
    } 
    if (viewGroup1 == null)
      throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.mHasActionBar + ", windowActionBarOverlay: " + this.mOverlayActionBar + ", android:windowIsFloating: " + this.mIsFloating + ", windowActionModeOverlay: " + this.mOverlayActionMode + ", windowNoTitle: " + this.mWindowNoTitle + " }"); 
    if (this.mDecorContentParent == null)
      this.mTitleView = (TextView)viewGroup1.findViewById(R.id.title); 
    ViewUtils.makeOptionalFitsSystemWindows((View)viewGroup1);
    ContentFrameLayout contentFrameLayout = (ContentFrameLayout)viewGroup1.findViewById(R.id.action_bar_activity_content);
    ViewGroup viewGroup2 = (ViewGroup)this.mWindow.findViewById(16908290);
    if (viewGroup2 != null) {
      while (viewGroup2.getChildCount() > 0) {
        View view = viewGroup2.getChildAt(0);
        viewGroup2.removeViewAt(0);
        contentFrameLayout.addView(view);
      } 
      viewGroup2.setId(-1);
      contentFrameLayout.setId(16908290);
      if (viewGroup2 instanceof FrameLayout)
        ((FrameLayout)viewGroup2).setForeground(null); 
    } 
    this.mWindow.setContentView((View)viewGroup1);
    contentFrameLayout.setAttachListener(new AppCompatDelegateImplV9$4(this));
    return viewGroup1;
  }
  
  private void ensureSubDecor() {
    if (!this.mSubDecorInstalled) {
      this.mSubDecor = createSubDecor();
      CharSequence charSequence = getTitle();
      if (!TextUtils.isEmpty(charSequence))
        onTitleChanged(charSequence); 
      applyFixedSizeWindow();
      onSubDecorInstalled(this.mSubDecor);
      this.mSubDecorInstalled = true;
      AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = getPanelState(0, false);
      if (!isDestroyed() && (appCompatDelegateImplV9$PanelFeatureState == null || appCompatDelegateImplV9$PanelFeatureState.menu == null))
        invalidatePanelMenu(108); 
    } 
  }
  
  private boolean initializePanelContent(AppCompatDelegateImplV9$PanelFeatureState paramAppCompatDelegateImplV9$PanelFeatureState) {
    if (paramAppCompatDelegateImplV9$PanelFeatureState.createdPanelView != null) {
      paramAppCompatDelegateImplV9$PanelFeatureState.shownPanelView = paramAppCompatDelegateImplV9$PanelFeatureState.createdPanelView;
      return true;
    } 
    if (paramAppCompatDelegateImplV9$PanelFeatureState.menu == null)
      return false; 
    if (this.mPanelMenuPresenterCallback == null)
      this.mPanelMenuPresenterCallback = new AppCompatDelegateImplV9$PanelMenuPresenterCallback(this); 
    paramAppCompatDelegateImplV9$PanelFeatureState.shownPanelView = (View)paramAppCompatDelegateImplV9$PanelFeatureState.getListMenuView(this.mPanelMenuPresenterCallback);
    return (paramAppCompatDelegateImplV9$PanelFeatureState.shownPanelView != null);
  }
  
  private boolean initializePanelDecor(AppCompatDelegateImplV9$PanelFeatureState paramAppCompatDelegateImplV9$PanelFeatureState) {
    paramAppCompatDelegateImplV9$PanelFeatureState.setStyle(getActionBarThemedContext());
    paramAppCompatDelegateImplV9$PanelFeatureState.decorView = (ViewGroup)new AppCompatDelegateImplV9$ListMenuDecorView(this, paramAppCompatDelegateImplV9$PanelFeatureState.listPresenterContext);
    paramAppCompatDelegateImplV9$PanelFeatureState.gravity = 81;
    return true;
  }
  
  private boolean initializePanelMenu(AppCompatDelegateImplV9$PanelFeatureState paramAppCompatDelegateImplV9$PanelFeatureState) {
    Context context2 = this.mContext;
    if ((paramAppCompatDelegateImplV9$PanelFeatureState.featureId == 0 || paramAppCompatDelegateImplV9$PanelFeatureState.featureId == 108) && this.mDecorContentParent != null) {
      TypedValue typedValue = new TypedValue();
      Resources.Theme theme3 = context2.getTheme();
      theme3.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
      Resources.Theme theme1 = null;
      if (typedValue.resourceId != 0) {
        theme1 = context2.getResources().newTheme();
        theme1.setTo(theme3);
        theme1.applyStyle(typedValue.resourceId, true);
        theme1.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
      } else {
        theme3.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
      } 
      Resources.Theme theme2 = theme1;
      if (typedValue.resourceId != 0) {
        theme2 = theme1;
        if (theme1 == null) {
          theme2 = context2.getResources().newTheme();
          theme2.setTo(theme3);
        } 
        theme2.applyStyle(typedValue.resourceId, true);
      } 
      if (theme2 != null) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context2, 0);
        contextThemeWrapper.getTheme().setTo(theme2);
        MenuBuilder menuBuilder1 = new MenuBuilder((Context)contextThemeWrapper);
        menuBuilder1.setCallback(this);
        paramAppCompatDelegateImplV9$PanelFeatureState.setMenu(menuBuilder1);
        return true;
      } 
    } 
    Context context1 = context2;
    MenuBuilder menuBuilder = new MenuBuilder(context1);
    menuBuilder.setCallback(this);
    paramAppCompatDelegateImplV9$PanelFeatureState.setMenu(menuBuilder);
    return true;
  }
  
  private void invalidatePanelMenu(int paramInt) {
    this.mInvalidatePanelMenuFeatures |= 1 << paramInt;
    if (!this.mInvalidatePanelMenuPosted) {
      ViewCompat.postOnAnimation(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
      this.mInvalidatePanelMenuPosted = true;
    } 
  }
  
  private boolean onKeyDownPanel(int paramInt, KeyEvent paramKeyEvent) {
    if (paramKeyEvent.getRepeatCount() == 0) {
      AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = getPanelState(paramInt, true);
      if (!appCompatDelegateImplV9$PanelFeatureState.isOpen)
        return preparePanel(appCompatDelegateImplV9$PanelFeatureState, paramKeyEvent); 
    } 
    return false;
  }
  
  private boolean onKeyUpPanel(int paramInt, KeyEvent paramKeyEvent) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #4
    //   3: aload_0
    //   4: getfield mActionMode : Landroid/support/v7/view/ActionMode;
    //   7: ifnull -> 12
    //   10: iconst_0
    //   11: ireturn
    //   12: aload_0
    //   13: iload_1
    //   14: iconst_1
    //   15: invokevirtual getPanelState : (IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    //   18: astore #5
    //   20: iload_1
    //   21: ifne -> 137
    //   24: aload_0
    //   25: getfield mDecorContentParent : Landroid/support/v7/widget/DecorContentParent;
    //   28: ifnull -> 137
    //   31: aload_0
    //   32: getfield mDecorContentParent : Landroid/support/v7/widget/DecorContentParent;
    //   35: invokeinterface canShowOverflowMenu : ()Z
    //   40: ifeq -> 137
    //   43: aload_0
    //   44: getfield mContext : Landroid/content/Context;
    //   47: invokestatic get : (Landroid/content/Context;)Landroid/view/ViewConfiguration;
    //   50: invokestatic hasPermanentMenuKey : (Landroid/view/ViewConfiguration;)Z
    //   53: ifne -> 137
    //   56: aload_0
    //   57: getfield mDecorContentParent : Landroid/support/v7/widget/DecorContentParent;
    //   60: invokeinterface isOverflowMenuShowing : ()Z
    //   65: ifne -> 124
    //   68: aload_0
    //   69: invokevirtual isDestroyed : ()Z
    //   72: ifne -> 229
    //   75: aload_0
    //   76: aload #5
    //   78: aload_2
    //   79: invokespecial preparePanel : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    //   82: ifeq -> 229
    //   85: aload_0
    //   86: getfield mDecorContentParent : Landroid/support/v7/widget/DecorContentParent;
    //   89: invokeinterface showOverflowMenu : ()Z
    //   94: istore_3
    //   95: iload_3
    //   96: ifeq -> 122
    //   99: aload_0
    //   100: getfield mContext : Landroid/content/Context;
    //   103: ldc_w 'audio'
    //   106: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   109: checkcast android/media/AudioManager
    //   112: astore_2
    //   113: aload_2
    //   114: ifnull -> 216
    //   117: aload_2
    //   118: iconst_0
    //   119: invokevirtual playSoundEffect : (I)V
    //   122: iload_3
    //   123: ireturn
    //   124: aload_0
    //   125: getfield mDecorContentParent : Landroid/support/v7/widget/DecorContentParent;
    //   128: invokeinterface hideOverflowMenu : ()Z
    //   133: istore_3
    //   134: goto -> 95
    //   137: aload #5
    //   139: getfield isOpen : Z
    //   142: ifne -> 153
    //   145: aload #5
    //   147: getfield isHandled : Z
    //   150: ifeq -> 169
    //   153: aload #5
    //   155: getfield isOpen : Z
    //   158: istore_3
    //   159: aload_0
    //   160: aload #5
    //   162: iconst_1
    //   163: invokevirtual closePanel : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    //   166: goto -> 95
    //   169: aload #5
    //   171: getfield isPrepared : Z
    //   174: ifeq -> 229
    //   177: aload #5
    //   179: getfield refreshMenuContent : Z
    //   182: ifeq -> 234
    //   185: aload #5
    //   187: iconst_0
    //   188: putfield isPrepared : Z
    //   191: aload_0
    //   192: aload #5
    //   194: aload_2
    //   195: invokespecial preparePanel : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    //   198: istore_3
    //   199: iload_3
    //   200: ifeq -> 229
    //   203: aload_0
    //   204: aload #5
    //   206: aload_2
    //   207: invokespecial openPanel : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    //   210: iload #4
    //   212: istore_3
    //   213: goto -> 95
    //   216: ldc_w 'AppCompatDelegate'
    //   219: ldc_w 'Couldn't get audio manager'
    //   222: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   225: pop
    //   226: goto -> 122
    //   229: iconst_0
    //   230: istore_3
    //   231: goto -> 95
    //   234: iconst_1
    //   235: istore_3
    //   236: goto -> 199
  }
  
  private void openPanel(AppCompatDelegateImplV9$PanelFeatureState paramAppCompatDelegateImplV9$PanelFeatureState, KeyEvent paramKeyEvent) {
    // Byte code:
    //   0: iconst_m1
    //   1: istore #5
    //   3: aload_1
    //   4: getfield isOpen : Z
    //   7: ifne -> 17
    //   10: aload_0
    //   11: invokevirtual isDestroyed : ()Z
    //   14: ifeq -> 18
    //   17: return
    //   18: aload_1
    //   19: getfield featureId : I
    //   22: ifne -> 76
    //   25: aload_0
    //   26: getfield mContext : Landroid/content/Context;
    //   29: astore #6
    //   31: aload #6
    //   33: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   36: invokevirtual getConfiguration : ()Landroid/content/res/Configuration;
    //   39: getfield screenLayout : I
    //   42: bipush #15
    //   44: iand
    //   45: iconst_4
    //   46: if_icmpne -> 112
    //   49: iconst_1
    //   50: istore_3
    //   51: aload #6
    //   53: invokevirtual getApplicationInfo : ()Landroid/content/pm/ApplicationInfo;
    //   56: getfield targetSdkVersion : I
    //   59: bipush #11
    //   61: if_icmplt -> 117
    //   64: iconst_1
    //   65: istore #4
    //   67: iload_3
    //   68: ifeq -> 76
    //   71: iload #4
    //   73: ifne -> 17
    //   76: aload_0
    //   77: invokevirtual getWindowCallback : ()Landroid/view/Window$Callback;
    //   80: astore #6
    //   82: aload #6
    //   84: ifnull -> 123
    //   87: aload #6
    //   89: aload_1
    //   90: getfield featureId : I
    //   93: aload_1
    //   94: getfield menu : Landroid/support/v7/view/menu/MenuBuilder;
    //   97: invokeinterface onMenuOpened : (ILandroid/view/Menu;)Z
    //   102: ifne -> 123
    //   105: aload_0
    //   106: aload_1
    //   107: iconst_1
    //   108: invokevirtual closePanel : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    //   111: return
    //   112: iconst_0
    //   113: istore_3
    //   114: goto -> 51
    //   117: iconst_0
    //   118: istore #4
    //   120: goto -> 67
    //   123: aload_0
    //   124: getfield mContext : Landroid/content/Context;
    //   127: ldc_w 'window'
    //   130: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   133: checkcast android/view/WindowManager
    //   136: astore #6
    //   138: aload #6
    //   140: ifnull -> 17
    //   143: aload_0
    //   144: aload_1
    //   145: aload_2
    //   146: invokespecial preparePanel : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    //   149: ifeq -> 17
    //   152: aload_1
    //   153: getfield decorView : Landroid/view/ViewGroup;
    //   156: ifnull -> 166
    //   159: aload_1
    //   160: getfield refreshDecorView : Z
    //   163: ifeq -> 400
    //   166: aload_1
    //   167: getfield decorView : Landroid/view/ViewGroup;
    //   170: ifnonnull -> 373
    //   173: aload_0
    //   174: aload_1
    //   175: invokespecial initializePanelDecor : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    //   178: ifeq -> 17
    //   181: aload_1
    //   182: getfield decorView : Landroid/view/ViewGroup;
    //   185: ifnull -> 17
    //   188: aload_0
    //   189: aload_1
    //   190: invokespecial initializePanelContent : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    //   193: ifeq -> 17
    //   196: aload_1
    //   197: invokevirtual hasPanelItems : ()Z
    //   200: ifeq -> 17
    //   203: aload_1
    //   204: getfield shownPanelView : Landroid/view/View;
    //   207: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   210: astore_2
    //   211: aload_2
    //   212: ifnonnull -> 436
    //   215: new android/view/ViewGroup$LayoutParams
    //   218: dup
    //   219: bipush #-2
    //   221: bipush #-2
    //   223: invokespecial <init> : (II)V
    //   226: astore_2
    //   227: aload_1
    //   228: getfield background : I
    //   231: istore_3
    //   232: aload_1
    //   233: getfield decorView : Landroid/view/ViewGroup;
    //   236: iload_3
    //   237: invokevirtual setBackgroundResource : (I)V
    //   240: aload_1
    //   241: getfield shownPanelView : Landroid/view/View;
    //   244: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   247: astore #7
    //   249: aload #7
    //   251: ifnull -> 274
    //   254: aload #7
    //   256: instanceof android/view/ViewGroup
    //   259: ifeq -> 274
    //   262: aload #7
    //   264: checkcast android/view/ViewGroup
    //   267: aload_1
    //   268: getfield shownPanelView : Landroid/view/View;
    //   271: invokevirtual removeView : (Landroid/view/View;)V
    //   274: aload_1
    //   275: getfield decorView : Landroid/view/ViewGroup;
    //   278: aload_1
    //   279: getfield shownPanelView : Landroid/view/View;
    //   282: aload_2
    //   283: invokevirtual addView : (Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   286: aload_1
    //   287: getfield shownPanelView : Landroid/view/View;
    //   290: invokevirtual hasFocus : ()Z
    //   293: ifne -> 304
    //   296: aload_1
    //   297: getfield shownPanelView : Landroid/view/View;
    //   300: invokevirtual requestFocus : ()Z
    //   303: pop
    //   304: bipush #-2
    //   306: istore_3
    //   307: aload_1
    //   308: iconst_0
    //   309: putfield isHandled : Z
    //   312: new android/view/WindowManager$LayoutParams
    //   315: dup
    //   316: iload_3
    //   317: bipush #-2
    //   319: aload_1
    //   320: getfield x : I
    //   323: aload_1
    //   324: getfield y : I
    //   327: sipush #1002
    //   330: ldc_w 8519680
    //   333: bipush #-3
    //   335: invokespecial <init> : (IIIIIII)V
    //   338: astore_2
    //   339: aload_2
    //   340: aload_1
    //   341: getfield gravity : I
    //   344: putfield gravity : I
    //   347: aload_2
    //   348: aload_1
    //   349: getfield windowAnimations : I
    //   352: putfield windowAnimations : I
    //   355: aload #6
    //   357: aload_1
    //   358: getfield decorView : Landroid/view/ViewGroup;
    //   361: aload_2
    //   362: invokeinterface addView : (Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   367: aload_1
    //   368: iconst_1
    //   369: putfield isOpen : Z
    //   372: return
    //   373: aload_1
    //   374: getfield refreshDecorView : Z
    //   377: ifeq -> 188
    //   380: aload_1
    //   381: getfield decorView : Landroid/view/ViewGroup;
    //   384: invokevirtual getChildCount : ()I
    //   387: ifle -> 188
    //   390: aload_1
    //   391: getfield decorView : Landroid/view/ViewGroup;
    //   394: invokevirtual removeAllViews : ()V
    //   397: goto -> 188
    //   400: aload_1
    //   401: getfield createdPanelView : Landroid/view/View;
    //   404: ifnull -> 430
    //   407: aload_1
    //   408: getfield createdPanelView : Landroid/view/View;
    //   411: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   414: astore_2
    //   415: aload_2
    //   416: ifnull -> 430
    //   419: iload #5
    //   421: istore_3
    //   422: aload_2
    //   423: getfield width : I
    //   426: iconst_m1
    //   427: if_icmpeq -> 307
    //   430: bipush #-2
    //   432: istore_3
    //   433: goto -> 307
    //   436: goto -> 227
  }
  
  private boolean performPanelShortcut(AppCompatDelegateImplV9$PanelFeatureState paramAppCompatDelegateImplV9$PanelFeatureState, int paramInt1, KeyEvent paramKeyEvent, int paramInt2) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #6
    //   3: iconst_0
    //   4: istore #5
    //   6: aload_3
    //   7: invokevirtual isSystem : ()Z
    //   10: ifeq -> 20
    //   13: iload #5
    //   15: istore #6
    //   17: iload #6
    //   19: ireturn
    //   20: aload_1
    //   21: getfield isPrepared : Z
    //   24: ifne -> 40
    //   27: iload #6
    //   29: istore #5
    //   31: aload_0
    //   32: aload_1
    //   33: aload_3
    //   34: invokespecial preparePanel : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    //   37: ifeq -> 64
    //   40: iload #6
    //   42: istore #5
    //   44: aload_1
    //   45: getfield menu : Landroid/support/v7/view/menu/MenuBuilder;
    //   48: ifnull -> 64
    //   51: aload_1
    //   52: getfield menu : Landroid/support/v7/view/menu/MenuBuilder;
    //   55: iload_2
    //   56: aload_3
    //   57: iload #4
    //   59: invokevirtual performShortcut : (ILandroid/view/KeyEvent;I)Z
    //   62: istore #5
    //   64: iload #5
    //   66: istore #6
    //   68: iload #5
    //   70: ifeq -> 17
    //   73: iload #5
    //   75: istore #6
    //   77: iload #4
    //   79: iconst_1
    //   80: iand
    //   81: ifne -> 17
    //   84: iload #5
    //   86: istore #6
    //   88: aload_0
    //   89: getfield mDecorContentParent : Landroid/support/v7/widget/DecorContentParent;
    //   92: ifnonnull -> 17
    //   95: aload_0
    //   96: aload_1
    //   97: iconst_1
    //   98: invokevirtual closePanel : (Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    //   101: iload #5
    //   103: ireturn
  }
  
  private boolean preparePanel(AppCompatDelegateImplV9$PanelFeatureState paramAppCompatDelegateImplV9$PanelFeatureState, KeyEvent paramKeyEvent) {
    if (!isDestroyed()) {
      int i;
      if (paramAppCompatDelegateImplV9$PanelFeatureState.isPrepared)
        return true; 
      if (this.mPreparedPanel != null && this.mPreparedPanel != paramAppCompatDelegateImplV9$PanelFeatureState)
        closePanel(this.mPreparedPanel, false); 
      Window.Callback callback = getWindowCallback();
      if (callback != null)
        paramAppCompatDelegateImplV9$PanelFeatureState.createdPanelView = callback.onCreatePanelView(paramAppCompatDelegateImplV9$PanelFeatureState.featureId); 
      if (paramAppCompatDelegateImplV9$PanelFeatureState.featureId == 0 || paramAppCompatDelegateImplV9$PanelFeatureState.featureId == 108) {
        i = 1;
      } else {
        i = 0;
      } 
      if (i && this.mDecorContentParent != null)
        this.mDecorContentParent.setMenuPrepared(); 
      if (paramAppCompatDelegateImplV9$PanelFeatureState.createdPanelView == null && (!i || !(peekSupportActionBar() instanceof ToolbarActionBar))) {
        boolean bool;
        if (paramAppCompatDelegateImplV9$PanelFeatureState.menu == null || paramAppCompatDelegateImplV9$PanelFeatureState.refreshMenuContent)
          if (paramAppCompatDelegateImplV9$PanelFeatureState.menu != null || (initializePanelMenu(paramAppCompatDelegateImplV9$PanelFeatureState) && paramAppCompatDelegateImplV9$PanelFeatureState.menu != null)) {
            if (i && this.mDecorContentParent != null) {
              if (this.mActionMenuPresenterCallback == null)
                this.mActionMenuPresenterCallback = new AppCompatDelegateImplV9$ActionMenuPresenterCallback(this); 
              this.mDecorContentParent.setMenu((Menu)paramAppCompatDelegateImplV9$PanelFeatureState.menu, this.mActionMenuPresenterCallback);
            } 
            paramAppCompatDelegateImplV9$PanelFeatureState.menu.stopDispatchingItemsChanged();
            if (!callback.onCreatePanelMenu(paramAppCompatDelegateImplV9$PanelFeatureState.featureId, (Menu)paramAppCompatDelegateImplV9$PanelFeatureState.menu)) {
              paramAppCompatDelegateImplV9$PanelFeatureState.setMenu(null);
              if (i && this.mDecorContentParent != null) {
                this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                return false;
              } 
              return false;
            } 
            paramAppCompatDelegateImplV9$PanelFeatureState.refreshMenuContent = false;
          } else {
            return false;
          }  
        paramAppCompatDelegateImplV9$PanelFeatureState.menu.stopDispatchingItemsChanged();
        if (paramAppCompatDelegateImplV9$PanelFeatureState.frozenActionViewState != null) {
          paramAppCompatDelegateImplV9$PanelFeatureState.menu.restoreActionViewStates(paramAppCompatDelegateImplV9$PanelFeatureState.frozenActionViewState);
          paramAppCompatDelegateImplV9$PanelFeatureState.frozenActionViewState = null;
        } 
        if (!callback.onPreparePanel(0, paramAppCompatDelegateImplV9$PanelFeatureState.createdPanelView, (Menu)paramAppCompatDelegateImplV9$PanelFeatureState.menu)) {
          if (i && this.mDecorContentParent != null)
            this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback); 
          paramAppCompatDelegateImplV9$PanelFeatureState.menu.startDispatchingItemsChanged();
          return false;
        } 
        if (paramKeyEvent != null) {
          i = paramKeyEvent.getDeviceId();
        } else {
          i = -1;
        } 
        if (KeyCharacterMap.load(i).getKeyboardType() != 1) {
          bool = true;
        } else {
          bool = false;
        } 
        paramAppCompatDelegateImplV9$PanelFeatureState.qwertyMode = bool;
        paramAppCompatDelegateImplV9$PanelFeatureState.menu.setQwertyMode(paramAppCompatDelegateImplV9$PanelFeatureState.qwertyMode);
        paramAppCompatDelegateImplV9$PanelFeatureState.menu.startDispatchingItemsChanged();
      } 
      paramAppCompatDelegateImplV9$PanelFeatureState.isPrepared = true;
      paramAppCompatDelegateImplV9$PanelFeatureState.isHandled = false;
      this.mPreparedPanel = paramAppCompatDelegateImplV9$PanelFeatureState;
      return true;
    } 
    return false;
  }
  
  private void reopenMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    if (this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && (!ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(this.mContext)) || this.mDecorContentParent.isOverflowMenuShowPending())) {
      Window.Callback callback = getWindowCallback();
      if (!this.mDecorContentParent.isOverflowMenuShowing() || !paramBoolean) {
        if (callback != null && !isDestroyed()) {
          if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 0x1) != 0) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuRunnable.run();
          } 
          AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState1 = getPanelState(0, true);
          if (appCompatDelegateImplV9$PanelFeatureState1.menu != null && !appCompatDelegateImplV9$PanelFeatureState1.refreshMenuContent && callback.onPreparePanel(0, appCompatDelegateImplV9$PanelFeatureState1.createdPanelView, (Menu)appCompatDelegateImplV9$PanelFeatureState1.menu)) {
            callback.onMenuOpened(108, (Menu)appCompatDelegateImplV9$PanelFeatureState1.menu);
            this.mDecorContentParent.showOverflowMenu();
          } 
        } 
        return;
      } 
      this.mDecorContentParent.hideOverflowMenu();
      if (!isDestroyed()) {
        callback.onPanelClosed(108, (Menu)(getPanelState(0, true)).menu);
        return;
      } 
      return;
    } 
    AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = getPanelState(0, true);
    appCompatDelegateImplV9$PanelFeatureState.refreshDecorView = true;
    closePanel(appCompatDelegateImplV9$PanelFeatureState, false);
    openPanel(appCompatDelegateImplV9$PanelFeatureState, (KeyEvent)null);
  }
  
  private int sanitizeWindowFeatureId(int paramInt) {
    if (paramInt == 8) {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
      return 108;
    } 
    int i = paramInt;
    if (paramInt == 9) {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
      return 109;
    } 
    return i;
  }
  
  private boolean shouldInheritContext(ViewParent paramViewParent) {
    if (paramViewParent == null)
      return false; 
    View view = this.mWindow.getDecorView();
    while (true) {
      if (paramViewParent == null)
        return true; 
      if (paramViewParent == view || !(paramViewParent instanceof View) || ViewCompat.isAttachedToWindow((View)paramViewParent))
        return false; 
      paramViewParent = paramViewParent.getParent();
    } 
  }
  
  private void throwFeatureRequestIfSubDecorInstalled() {
    if (this.mSubDecorInstalled)
      throw new AndroidRuntimeException("Window feature must be requested before adding content"); 
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    ensureSubDecor();
    ((ViewGroup)this.mSubDecor.findViewById(16908290)).addView(paramView, paramLayoutParams);
    this.mOriginalWindowCallback.onContentChanged();
  }
  
  View callActivityOnCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet) {
    if (this.mOriginalWindowCallback instanceof LayoutInflater.Factory) {
      paramView = ((LayoutInflater.Factory)this.mOriginalWindowCallback).onCreateView(paramString, paramContext, paramAttributeSet);
      if (paramView != null)
        return paramView; 
    } 
    return null;
  }
  
  void callOnPanelClosed(int paramInt, AppCompatDelegateImplV9$PanelFeatureState paramAppCompatDelegateImplV9$PanelFeatureState, Menu paramMenu) {
    MenuBuilder menuBuilder;
    AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = paramAppCompatDelegateImplV9$PanelFeatureState;
    Menu menu = paramMenu;
    if (paramMenu == null) {
      AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState1 = paramAppCompatDelegateImplV9$PanelFeatureState;
      if (paramAppCompatDelegateImplV9$PanelFeatureState == null) {
        appCompatDelegateImplV9$PanelFeatureState1 = paramAppCompatDelegateImplV9$PanelFeatureState;
        if (paramInt >= 0) {
          appCompatDelegateImplV9$PanelFeatureState1 = paramAppCompatDelegateImplV9$PanelFeatureState;
          if (paramInt < this.mPanels.length)
            appCompatDelegateImplV9$PanelFeatureState1 = this.mPanels[paramInt]; 
        } 
      } 
      appCompatDelegateImplV9$PanelFeatureState = appCompatDelegateImplV9$PanelFeatureState1;
      menu = paramMenu;
      if (appCompatDelegateImplV9$PanelFeatureState1 != null) {
        menuBuilder = appCompatDelegateImplV9$PanelFeatureState1.menu;
        appCompatDelegateImplV9$PanelFeatureState = appCompatDelegateImplV9$PanelFeatureState1;
      } 
    } 
    if ((appCompatDelegateImplV9$PanelFeatureState == null || appCompatDelegateImplV9$PanelFeatureState.isOpen) && !isDestroyed()) {
      this.mOriginalWindowCallback.onPanelClosed(paramInt, (Menu)menuBuilder);
      return;
    } 
  }
  
  void checkCloseActionMenu(MenuBuilder paramMenuBuilder) {
    if (this.mClosingActionMenu)
      return; 
    this.mClosingActionMenu = true;
    this.mDecorContentParent.dismissPopups();
    Window.Callback callback = getWindowCallback();
    if (callback != null && !isDestroyed())
      callback.onPanelClosed(108, (Menu)paramMenuBuilder); 
    this.mClosingActionMenu = false;
  }
  
  void closePanel(int paramInt) {
    closePanel(getPanelState(paramInt, true), true);
  }
  
  void closePanel(AppCompatDelegateImplV9$PanelFeatureState paramAppCompatDelegateImplV9$PanelFeatureState, boolean paramBoolean) {
    if (paramBoolean && paramAppCompatDelegateImplV9$PanelFeatureState.featureId == 0 && this.mDecorContentParent != null && this.mDecorContentParent.isOverflowMenuShowing()) {
      checkCloseActionMenu(paramAppCompatDelegateImplV9$PanelFeatureState.menu);
      return;
    } 
    WindowManager windowManager = (WindowManager)this.mContext.getSystemService("window");
    if (windowManager != null && paramAppCompatDelegateImplV9$PanelFeatureState.isOpen && paramAppCompatDelegateImplV9$PanelFeatureState.decorView != null) {
      windowManager.removeView((View)paramAppCompatDelegateImplV9$PanelFeatureState.decorView);
      if (paramBoolean)
        callOnPanelClosed(paramAppCompatDelegateImplV9$PanelFeatureState.featureId, paramAppCompatDelegateImplV9$PanelFeatureState, (Menu)null); 
    } 
    paramAppCompatDelegateImplV9$PanelFeatureState.isPrepared = false;
    paramAppCompatDelegateImplV9$PanelFeatureState.isHandled = false;
    paramAppCompatDelegateImplV9$PanelFeatureState.isOpen = false;
    paramAppCompatDelegateImplV9$PanelFeatureState.shownPanelView = null;
    paramAppCompatDelegateImplV9$PanelFeatureState.refreshDecorView = true;
    if (this.mPreparedPanel == paramAppCompatDelegateImplV9$PanelFeatureState) {
      this.mPreparedPanel = null;
      return;
    } 
  }
  
  public View createView(View paramView, String paramString, @NonNull Context paramContext, @NonNull AttributeSet paramAttributeSet) {
    if (this.mAppCompatViewInflater == null)
      this.mAppCompatViewInflater = new AppCompatViewInflater(); 
    if (IS_PRE_LOLLIPOP) {
      if (paramAttributeSet instanceof XmlPullParser) {
        if (((XmlPullParser)paramAttributeSet).getDepth() > 1) {
          boolean bool3 = true;
          return this.mAppCompatViewInflater.createView(paramView, paramString, paramContext, paramAttributeSet, bool3, IS_PRE_LOLLIPOP, true, VectorEnabledTintResources.shouldBeUsed());
        } 
        boolean bool2 = false;
        return this.mAppCompatViewInflater.createView(paramView, paramString, paramContext, paramAttributeSet, bool2, IS_PRE_LOLLIPOP, true, VectorEnabledTintResources.shouldBeUsed());
      } 
      boolean bool1 = shouldInheritContext((ViewParent)paramView);
      return this.mAppCompatViewInflater.createView(paramView, paramString, paramContext, paramAttributeSet, bool1, IS_PRE_LOLLIPOP, true, VectorEnabledTintResources.shouldBeUsed());
    } 
    boolean bool = false;
    return this.mAppCompatViewInflater.createView(paramView, paramString, paramContext, paramAttributeSet, bool, IS_PRE_LOLLIPOP, true, VectorEnabledTintResources.shouldBeUsed());
  }
  
  void dismissPopups() {
    if (this.mDecorContentParent != null)
      this.mDecorContentParent.dismissPopups(); 
    if (this.mActionModePopup != null) {
      this.mWindow.getDecorView().removeCallbacks(this.mShowActionModePopup);
      if (this.mActionModePopup.isShowing())
        try {
          this.mActionModePopup.dismiss();
        } catch (IllegalArgumentException illegalArgumentException) {} 
      this.mActionModePopup = null;
    } 
    endOnGoingFadeAnimation();
    AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = getPanelState(0, false);
    if (appCompatDelegateImplV9$PanelFeatureState != null && appCompatDelegateImplV9$PanelFeatureState.menu != null)
      appCompatDelegateImplV9$PanelFeatureState.menu.close(); 
  }
  
  boolean dispatchKeyEvent(KeyEvent paramKeyEvent) {
    boolean bool = true;
    if (paramKeyEvent.getKeyCode() == 82 && this.mOriginalWindowCallback.dispatchKeyEvent(paramKeyEvent))
      return true; 
    int i = paramKeyEvent.getKeyCode();
    if (paramKeyEvent.getAction() != 0)
      bool = false; 
    return bool ? onKeyDown(i, paramKeyEvent) : onKeyUp(i, paramKeyEvent);
  }
  
  void doInvalidatePanelMenu(int paramInt) {
    AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = getPanelState(paramInt, true);
    if (appCompatDelegateImplV9$PanelFeatureState.menu != null) {
      Bundle bundle = new Bundle();
      appCompatDelegateImplV9$PanelFeatureState.menu.saveActionViewStates(bundle);
      if (bundle.size() > 0)
        appCompatDelegateImplV9$PanelFeatureState.frozenActionViewState = bundle; 
      appCompatDelegateImplV9$PanelFeatureState.menu.stopDispatchingItemsChanged();
      appCompatDelegateImplV9$PanelFeatureState.menu.clear();
    } 
    appCompatDelegateImplV9$PanelFeatureState.refreshMenuContent = true;
    appCompatDelegateImplV9$PanelFeatureState.refreshDecorView = true;
    if ((paramInt == 108 || paramInt == 0) && this.mDecorContentParent != null) {
      appCompatDelegateImplV9$PanelFeatureState = getPanelState(0, false);
      if (appCompatDelegateImplV9$PanelFeatureState != null) {
        appCompatDelegateImplV9$PanelFeatureState.isPrepared = false;
        preparePanel(appCompatDelegateImplV9$PanelFeatureState, (KeyEvent)null);
      } 
    } 
  }
  
  void endOnGoingFadeAnimation() {
    if (this.mFadeAnim != null)
      this.mFadeAnim.cancel(); 
  }
  
  AppCompatDelegateImplV9$PanelFeatureState findMenuPanel(Menu paramMenu) {
    byte b;
    AppCompatDelegateImplV9$PanelFeatureState[] arrayOfAppCompatDelegateImplV9$PanelFeatureState = this.mPanels;
    if (arrayOfAppCompatDelegateImplV9$PanelFeatureState != null) {
      b = arrayOfAppCompatDelegateImplV9$PanelFeatureState.length;
    } else {
      b = 0;
    } 
    for (int i = 0; i < b; i++) {
      AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = arrayOfAppCompatDelegateImplV9$PanelFeatureState[i];
      if (appCompatDelegateImplV9$PanelFeatureState != null && appCompatDelegateImplV9$PanelFeatureState.menu == paramMenu)
        return appCompatDelegateImplV9$PanelFeatureState; 
    } 
    return null;
  }
  
  @Nullable
  public View findViewById(@IdRes int paramInt) {
    ensureSubDecor();
    return this.mWindow.findViewById(paramInt);
  }
  
  protected AppCompatDelegateImplV9$PanelFeatureState getPanelState(int paramInt, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mPanels : [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    //   4: astore #4
    //   6: aload #4
    //   8: ifnull -> 21
    //   11: aload #4
    //   13: astore_3
    //   14: aload #4
    //   16: arraylength
    //   17: iload_1
    //   18: if_icmpgt -> 49
    //   21: iload_1
    //   22: iconst_1
    //   23: iadd
    //   24: anewarray android/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState
    //   27: astore_3
    //   28: aload #4
    //   30: ifnull -> 44
    //   33: aload #4
    //   35: iconst_0
    //   36: aload_3
    //   37: iconst_0
    //   38: aload #4
    //   40: arraylength
    //   41: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   44: aload_0
    //   45: aload_3
    //   46: putfield mPanels : [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    //   49: aload_3
    //   50: iload_1
    //   51: aaload
    //   52: astore #4
    //   54: aload #4
    //   56: ifnonnull -> 77
    //   59: new android/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState
    //   62: dup
    //   63: iload_1
    //   64: invokespecial <init> : (I)V
    //   67: astore #4
    //   69: aload_3
    //   70: iload_1
    //   71: aload #4
    //   73: aastore
    //   74: aload #4
    //   76: areturn
    //   77: aload #4
    //   79: areturn
  }
  
  ViewGroup getSubDecor() {
    return this.mSubDecor;
  }
  
  public boolean hasWindowFeature(int paramInt) {
    switch (sanitizeWindowFeatureId(paramInt)) {
      default:
        return false;
      case 108:
        return this.mHasActionBar;
      case 109:
        return this.mOverlayActionBar;
      case 10:
        return this.mOverlayActionMode;
      case 2:
        return this.mFeatureProgress;
      case 5:
        return this.mFeatureIndeterminateProgress;
      case 1:
        break;
    } 
    return this.mWindowNoTitle;
  }
  
  public void initWindowDecorActionBar() {
    ensureSubDecor();
    if (this.mHasActionBar && this.mActionBar == null) {
      if (this.mOriginalWindowCallback instanceof Activity) {
        this.mActionBar = new WindowDecorActionBar((Activity)this.mOriginalWindowCallback, this.mOverlayActionBar);
      } else if (this.mOriginalWindowCallback instanceof Dialog) {
        this.mActionBar = new WindowDecorActionBar((Dialog)this.mOriginalWindowCallback);
      } 
      if (this.mActionBar != null) {
        this.mActionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
        return;
      } 
    } 
  }
  
  public void installViewFactory() {
    LayoutInflater layoutInflater = LayoutInflater.from(this.mContext);
    if (layoutInflater.getFactory() == null) {
      LayoutInflaterCompat.setFactory(layoutInflater, this);
      return;
    } 
    if (!(LayoutInflaterCompat.getFactory(layoutInflater) instanceof AppCompatDelegateImplV9)) {
      Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
      return;
    } 
  }
  
  public void invalidateOptionsMenu() {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null && actionBar.invalidateOptionsMenu())
      return; 
    invalidatePanelMenu(0);
  }
  
  boolean onBackPressed() {
    if (this.mActionMode != null) {
      this.mActionMode.finish();
      return true;
    } 
    ActionBar actionBar = getSupportActionBar();
    return !(actionBar == null || !actionBar.collapseActionView());
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    if (this.mHasActionBar && this.mSubDecorInstalled) {
      ActionBar actionBar = getSupportActionBar();
      if (actionBar != null)
        actionBar.onConfigurationChanged(paramConfiguration); 
    } 
    AppCompatDrawableManager.get().onConfigurationChanged(this.mContext);
    applyDayNight();
  }
  
  public void onCreate(Bundle paramBundle) {
    ActionBar actionBar;
    if (this.mOriginalWindowCallback instanceof Activity && NavUtils.getParentActivityName((Activity)this.mOriginalWindowCallback) != null) {
      actionBar = peekSupportActionBar();
      if (actionBar == null) {
        this.mEnableDefaultActionBarUp = true;
        return;
      } 
    } else {
      return;
    } 
    actionBar.setDefaultDisplayHomeAsUpEnabled(true);
  }
  
  public final View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet) {
    View view = callActivityOnCreateView(paramView, paramString, paramContext, paramAttributeSet);
    return (view != null) ? view : createView(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public void onDestroy() {
    if (this.mInvalidatePanelMenuPosted)
      this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable); 
    super.onDestroy();
    if (this.mActionBar != null)
      this.mActionBar.onDestroy(); 
  }
  
  boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    boolean bool = true;
    switch (paramInt) {
      default:
        if (Build.VERSION.SDK_INT < 11)
          onKeyShortcut(paramInt, paramKeyEvent); 
        return false;
      case 82:
        onKeyDownPanel(0, paramKeyEvent);
        return true;
      case 4:
        break;
    } 
    if ((paramKeyEvent.getFlags() & 0x80) == 0)
      bool = false; 
    this.mLongPressBackDown = bool;
  }
  
  boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent) {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar == null || !actionBar.onKeyShortcut(paramInt, paramKeyEvent)) {
      if (this.mPreparedPanel != null && performPanelShortcut(this.mPreparedPanel, paramKeyEvent.getKeyCode(), paramKeyEvent, 1)) {
        if (this.mPreparedPanel != null) {
          this.mPreparedPanel.isHandled = true;
          return true;
        } 
        return true;
      } 
      if (this.mPreparedPanel == null) {
        AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = getPanelState(0, true);
        preparePanel(appCompatDelegateImplV9$PanelFeatureState, paramKeyEvent);
        boolean bool = performPanelShortcut(appCompatDelegateImplV9$PanelFeatureState, paramKeyEvent.getKeyCode(), paramKeyEvent, 1);
        appCompatDelegateImplV9$PanelFeatureState.isPrepared = false;
        return !!bool;
      } 
      return false;
    } 
    return true;
  }
  
  boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
    null = true;
    switch (paramInt) {
      default:
        return false;
      case 82:
        onKeyUpPanel(0, paramKeyEvent);
        return true;
      case 4:
        break;
    } 
    boolean bool = this.mLongPressBackDown;
    this.mLongPressBackDown = false;
    AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = getPanelState(0, false);
    if (appCompatDelegateImplV9$PanelFeatureState != null && appCompatDelegateImplV9$PanelFeatureState.isOpen) {
      if (!bool) {
        closePanel(appCompatDelegateImplV9$PanelFeatureState, true);
        return true;
      } 
      return SYNTHETIC_LOCAL_VARIABLE_3;
    } 
    if (onBackPressed())
      return true; 
  }
  
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem) {
    Window.Callback callback = getWindowCallback();
    if (callback != null && !isDestroyed()) {
      AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = findMenuPanel((Menu)paramMenuBuilder.getRootMenu());
      if (appCompatDelegateImplV9$PanelFeatureState != null)
        return callback.onMenuItemSelected(appCompatDelegateImplV9$PanelFeatureState.featureId, paramMenuItem); 
    } 
    return false;
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder) {
    reopenMenu(paramMenuBuilder, true);
  }
  
  boolean onMenuOpened(int paramInt, Menu paramMenu) {
    if (paramInt == 108) {
      ActionBar actionBar = getSupportActionBar();
      if (actionBar != null)
        actionBar.dispatchMenuVisibilityChanged(true); 
      return true;
    } 
    return false;
  }
  
  void onPanelClosed(int paramInt, Menu paramMenu) {
    if (paramInt == 108) {
      ActionBar actionBar = getSupportActionBar();
      if (actionBar != null)
        actionBar.dispatchMenuVisibilityChanged(false); 
      return;
    } 
    if (paramInt == 0) {
      AppCompatDelegateImplV9$PanelFeatureState appCompatDelegateImplV9$PanelFeatureState = getPanelState(paramInt, true);
      if (appCompatDelegateImplV9$PanelFeatureState.isOpen) {
        closePanel(appCompatDelegateImplV9$PanelFeatureState, false);
        return;
      } 
    } 
  }
  
  public void onPostCreate(Bundle paramBundle) {
    ensureSubDecor();
  }
  
  public void onPostResume() {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null)
      actionBar.setShowHideAnimationEnabled(true); 
  }
  
  public void onStop() {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null)
      actionBar.setShowHideAnimationEnabled(false); 
  }
  
  void onSubDecorInstalled(ViewGroup paramViewGroup) {}
  
  void onTitleChanged(CharSequence paramCharSequence) {
    if (this.mDecorContentParent != null) {
      this.mDecorContentParent.setWindowTitle(paramCharSequence);
      return;
    } 
    if (peekSupportActionBar() != null) {
      peekSupportActionBar().setWindowTitle(paramCharSequence);
      return;
    } 
    if (this.mTitleView != null) {
      this.mTitleView.setText(paramCharSequence);
      return;
    } 
  }
  
  public boolean requestWindowFeature(int paramInt) {
    paramInt = sanitizeWindowFeatureId(paramInt);
    if (this.mWindowNoTitle && paramInt == 108)
      return false; 
    if (this.mHasActionBar && paramInt == 1)
      this.mHasActionBar = false; 
    switch (paramInt) {
      default:
        return this.mWindow.requestFeature(paramInt);
      case 108:
        throwFeatureRequestIfSubDecorInstalled();
        this.mHasActionBar = true;
        return true;
      case 109:
        throwFeatureRequestIfSubDecorInstalled();
        this.mOverlayActionBar = true;
        return true;
      case 10:
        throwFeatureRequestIfSubDecorInstalled();
        this.mOverlayActionMode = true;
        return true;
      case 2:
        throwFeatureRequestIfSubDecorInstalled();
        this.mFeatureProgress = true;
        return true;
      case 5:
        throwFeatureRequestIfSubDecorInstalled();
        this.mFeatureIndeterminateProgress = true;
        return true;
      case 1:
        break;
    } 
    throwFeatureRequestIfSubDecorInstalled();
    this.mWindowNoTitle = true;
    return true;
  }
  
  public void setContentView(int paramInt) {
    ensureSubDecor();
    ViewGroup viewGroup = (ViewGroup)this.mSubDecor.findViewById(16908290);
    viewGroup.removeAllViews();
    LayoutInflater.from(this.mContext).inflate(paramInt, viewGroup);
    this.mOriginalWindowCallback.onContentChanged();
  }
  
  public void setContentView(View paramView) {
    ensureSubDecor();
    ViewGroup viewGroup = (ViewGroup)this.mSubDecor.findViewById(16908290);
    viewGroup.removeAllViews();
    viewGroup.addView(paramView);
    this.mOriginalWindowCallback.onContentChanged();
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    ensureSubDecor();
    ViewGroup viewGroup = (ViewGroup)this.mSubDecor.findViewById(16908290);
    viewGroup.removeAllViews();
    viewGroup.addView(paramView, paramLayoutParams);
    this.mOriginalWindowCallback.onContentChanged();
  }
  
  public void setSupportActionBar(Toolbar paramToolbar) {
    if (!(this.mOriginalWindowCallback instanceof Activity))
      return; 
    ActionBar actionBar = getSupportActionBar();
    if (actionBar instanceof WindowDecorActionBar)
      throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."); 
    this.mMenuInflater = null;
    if (actionBar != null)
      actionBar.onDestroy(); 
    if (paramToolbar != null) {
      ToolbarActionBar toolbarActionBar = new ToolbarActionBar(paramToolbar, ((Activity)this.mOriginalWindowCallback).getTitle(), this.mAppCompatWindowCallback);
      this.mActionBar = toolbarActionBar;
      this.mWindow.setCallback(toolbarActionBar.getWrappedWindowCallback());
    } else {
      this.mActionBar = null;
      this.mWindow.setCallback(this.mAppCompatWindowCallback);
    } 
    invalidateOptionsMenu();
  }
  
  final boolean shouldAnimateActionModeView() {
    return (this.mSubDecorInstalled && this.mSubDecor != null && ViewCompat.isLaidOut((View)this.mSubDecor));
  }
  
  public ActionMode startSupportActionMode(@NonNull ActionMode.Callback paramCallback) {
    if (paramCallback == null)
      throw new IllegalArgumentException("ActionMode callback can not be null."); 
    if (this.mActionMode != null)
      this.mActionMode.finish(); 
    paramCallback = new AppCompatDelegateImplV9$ActionModeCallbackWrapperV9(this, paramCallback);
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      this.mActionMode = actionBar.startActionMode(paramCallback);
      if (this.mActionMode != null && this.mAppCompatCallback != null)
        this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode); 
    } 
    if (this.mActionMode == null)
      this.mActionMode = startSupportActionModeFromWindow(paramCallback); 
    return this.mActionMode;
  }
  
  ActionMode startSupportActionModeFromWindow(@NonNull ActionMode.Callback paramCallback) {
    endOnGoingFadeAnimation();
    if (this.mActionMode != null)
      this.mActionMode.finish(); 
    ActionMode.Callback callback = paramCallback;
    if (!(paramCallback instanceof AppCompatDelegateImplV9$ActionModeCallbackWrapperV9))
      callback = new AppCompatDelegateImplV9$ActionModeCallbackWrapperV9(this, paramCallback); 
    if (this.mAppCompatCallback != null && !isDestroyed()) {
      try {
        ActionMode actionMode = this.mAppCompatCallback.onWindowStartingSupportActionMode(callback);
      } catch (AbstractMethodError abstractMethodError) {
        abstractMethodError = null;
      } 
    } else {
      paramCallback = null;
    } 
    if (paramCallback != null) {
      this.mActionMode = (ActionMode)paramCallback;
    } else {
      if (this.mActionModeView == null)
        if (this.mIsFloating) {
          Context context;
          TypedValue typedValue = new TypedValue();
          Resources.Theme theme = this.mContext.getTheme();
          theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
          if (typedValue.resourceId != 0) {
            Resources.Theme theme1 = this.mContext.getResources().newTheme();
            theme1.setTo(theme);
            theme1.applyStyle(typedValue.resourceId, true);
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.mContext, 0);
            contextThemeWrapper.getTheme().setTo(theme1);
          } else {
            context = this.mContext;
          } 
          this.mActionModeView = new ActionBarContextView(context);
          this.mActionModePopup = new PopupWindow(context, null, R.attr.actionModePopupWindowStyle);
          PopupWindowCompat.setWindowLayoutType(this.mActionModePopup, 2);
          this.mActionModePopup.setContentView((View)this.mActionModeView);
          this.mActionModePopup.setWidth(-1);
          context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
          int i = TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
          this.mActionModeView.setContentHeight(i);
          this.mActionModePopup.setHeight(-2);
          this.mShowActionModePopup = new AppCompatDelegateImplV9$5(this);
        } else {
          ViewStubCompat viewStubCompat = (ViewStubCompat)this.mSubDecor.findViewById(R.id.action_mode_bar_stub);
          if (viewStubCompat != null) {
            viewStubCompat.setLayoutInflater(LayoutInflater.from(getActionBarThemedContext()));
            this.mActionModeView = (ActionBarContextView)viewStubCompat.inflate();
          } 
        }  
      if (this.mActionModeView != null) {
        boolean bool;
        endOnGoingFadeAnimation();
        this.mActionModeView.killMode();
        Context context = this.mActionModeView.getContext();
        ActionBarContextView actionBarContextView = this.mActionModeView;
        if (this.mActionModePopup == null) {
          bool = true;
        } else {
          bool = false;
        } 
        StandaloneActionMode standaloneActionMode = new StandaloneActionMode(context, actionBarContextView, callback, bool);
        if (callback.onCreateActionMode((ActionMode)standaloneActionMode, standaloneActionMode.getMenu())) {
          standaloneActionMode.invalidate();
          this.mActionModeView.initForMode((ActionMode)standaloneActionMode);
          this.mActionMode = (ActionMode)standaloneActionMode;
          if (shouldAnimateActionModeView()) {
            ViewCompat.setAlpha((View)this.mActionModeView, 0.0F);
            this.mFadeAnim = ViewCompat.animate((View)this.mActionModeView).alpha(1.0F);
            this.mFadeAnim.setListener((ViewPropertyAnimatorListener)new AppCompatDelegateImplV9$6(this));
          } else {
            ViewCompat.setAlpha((View)this.mActionModeView, 1.0F);
            this.mActionModeView.setVisibility(0);
            this.mActionModeView.sendAccessibilityEvent(32);
            if (this.mActionModeView.getParent() instanceof View)
              ViewCompat.requestApplyInsets((View)this.mActionModeView.getParent()); 
          } 
          if (this.mActionModePopup != null)
            this.mWindow.getDecorView().post(this.mShowActionModePopup); 
        } else {
          this.mActionMode = null;
        } 
      } 
    } 
    if (this.mActionMode != null && this.mAppCompatCallback != null)
      this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode); 
    return this.mActionMode;
  }
  
  int updateStatusGuard(int paramInt) {
    byte b1;
    int i = 1;
    boolean bool = true;
    byte b2 = 0;
    if (this.mActionModeView != null && this.mActionModeView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
      ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)this.mActionModeView.getLayoutParams();
      if (this.mActionModeView.isShown()) {
        if (this.mTempRect1 == null) {
          this.mTempRect1 = new Rect();
          this.mTempRect2 = new Rect();
        } 
        Rect rect1 = this.mTempRect1;
        Rect rect2 = this.mTempRect2;
        rect1.set(0, paramInt, 0, 0);
        ViewUtils.computeFitSystemWindows((View)this.mSubDecor, rect1, rect2);
        if (rect2.top == 0) {
          b1 = paramInt;
        } else {
          b1 = 0;
        } 
        if (marginLayoutParams.topMargin != b1) {
          marginLayoutParams.topMargin = paramInt;
          if (this.mStatusGuard == null) {
            this.mStatusGuard = new View(this.mContext);
            this.mStatusGuard.setBackgroundColor(this.mContext.getResources().getColor(R.color.abc_input_method_navigation_guard));
            this.mSubDecor.addView(this.mStatusGuard, -1, new ViewGroup.LayoutParams(-1, paramInt));
            b1 = 1;
          } else {
            ViewGroup.LayoutParams layoutParams = this.mStatusGuard.getLayoutParams();
            if (layoutParams.height != paramInt) {
              layoutParams.height = paramInt;
              this.mStatusGuard.setLayoutParams(layoutParams);
            } 
            b1 = 1;
          } 
        } else {
          b1 = 0;
        } 
        if (this.mStatusGuard == null)
          bool = false; 
        i = paramInt;
        if (!this.mOverlayActionMode) {
          i = paramInt;
          if (bool)
            i = 0; 
        } 
        paramInt = i;
        i = b1;
        b1 = bool;
      } else if (marginLayoutParams.topMargin != 0) {
        marginLayoutParams.topMargin = 0;
        b1 = 0;
      } else {
        i = 0;
        b1 = 0;
      } 
      if (i != 0)
        this.mActionModeView.setLayoutParams((ViewGroup.LayoutParams)marginLayoutParams); 
    } else {
      b1 = 0;
    } 
    if (this.mStatusGuard != null) {
      View view = this.mStatusGuard;
      if (b1) {
        b1 = b2;
      } else {
        b1 = 8;
      } 
      view.setVisibility(b1);
    } 
    return paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */