package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.v7.view.ActionMode;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.widget.TintTypedArray;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.Window;

@TargetApi(9)
@RequiresApi(9)
abstract class AppCompatDelegateImplBase extends AppCompatDelegate {
  static final boolean DEBUG = false;
  
  static final String EXCEPTION_HANDLER_MESSAGE_SUFFIX = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
  
  private static final boolean SHOULD_INSTALL_EXCEPTION_HANDLER;
  
  private static boolean sInstalledExceptionHandler;
  
  private static final int[] sWindowBackgroundStyleable = new int[] { 16842836 };
  
  ActionBar mActionBar;
  
  final AppCompatCallback mAppCompatCallback;
  
  final Window.Callback mAppCompatWindowCallback;
  
  final Context mContext;
  
  boolean mHasActionBar;
  
  private boolean mIsDestroyed;
  
  boolean mIsFloating;
  
  private boolean mIsStarted;
  
  MenuInflater mMenuInflater;
  
  final Window.Callback mOriginalWindowCallback;
  
  boolean mOverlayActionBar;
  
  boolean mOverlayActionMode;
  
  private CharSequence mTitle;
  
  final Window mWindow;
  
  boolean mWindowNoTitle;
  
  AppCompatDelegateImplBase(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback) {
    this.mContext = paramContext;
    this.mWindow = paramWindow;
    this.mAppCompatCallback = paramAppCompatCallback;
    this.mOriginalWindowCallback = this.mWindow.getCallback();
    if (this.mOriginalWindowCallback instanceof AppCompatDelegateImplBase$AppCompatWindowCallbackBase)
      throw new IllegalStateException("AppCompat has already installed itself into the Window"); 
    this.mAppCompatWindowCallback = wrapWindowCallback(this.mOriginalWindowCallback);
    this.mWindow.setCallback(this.mAppCompatWindowCallback);
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, null, sWindowBackgroundStyleable);
    Drawable drawable = tintTypedArray.getDrawableIfKnown(0);
    if (drawable != null)
      this.mWindow.setBackgroundDrawable(drawable); 
    tintTypedArray.recycle();
  }
  
  public boolean applyDayNight() {
    return false;
  }
  
  abstract boolean dispatchKeyEvent(KeyEvent paramKeyEvent);
  
  final Context getActionBarThemedContext() {
    Context context1 = null;
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null)
      context1 = actionBar.getThemedContext(); 
    Context context2 = context1;
    if (context1 == null)
      context2 = this.mContext; 
    return context2;
  }
  
  public final ActionBarDrawerToggle$Delegate getDrawerToggleDelegate() {
    return new AppCompatDelegateImplBase$ActionBarDrawableToggleImpl(this);
  }
  
  public MenuInflater getMenuInflater() {
    if (this.mMenuInflater == null) {
      Context context;
      initWindowDecorActionBar();
      if (this.mActionBar != null) {
        context = this.mActionBar.getThemedContext();
      } else {
        context = this.mContext;
      } 
      this.mMenuInflater = (MenuInflater)new SupportMenuInflater(context);
    } 
    return this.mMenuInflater;
  }
  
  public ActionBar getSupportActionBar() {
    initWindowDecorActionBar();
    return this.mActionBar;
  }
  
  final CharSequence getTitle() {
    return (this.mOriginalWindowCallback instanceof Activity) ? ((Activity)this.mOriginalWindowCallback).getTitle() : this.mTitle;
  }
  
  final Window.Callback getWindowCallback() {
    return this.mWindow.getCallback();
  }
  
  abstract void initWindowDecorActionBar();
  
  final boolean isDestroyed() {
    return this.mIsDestroyed;
  }
  
  public boolean isHandleNativeActionModesEnabled() {
    return false;
  }
  
  final boolean isStarted() {
    return this.mIsStarted;
  }
  
  public void onDestroy() {
    this.mIsDestroyed = true;
  }
  
  abstract boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent);
  
  abstract boolean onMenuOpened(int paramInt, Menu paramMenu);
  
  abstract void onPanelClosed(int paramInt, Menu paramMenu);
  
  public void onSaveInstanceState(Bundle paramBundle) {}
  
  public void onStart() {
    this.mIsStarted = true;
  }
  
  public void onStop() {
    this.mIsStarted = false;
  }
  
  abstract void onTitleChanged(CharSequence paramCharSequence);
  
  final ActionBar peekSupportActionBar() {
    return this.mActionBar;
  }
  
  public void setHandleNativeActionModesEnabled(boolean paramBoolean) {}
  
  public void setLocalNightMode(int paramInt) {}
  
  public final void setTitle(CharSequence paramCharSequence) {
    this.mTitle = paramCharSequence;
    onTitleChanged(paramCharSequence);
  }
  
  abstract ActionMode startSupportActionModeFromWindow(ActionMode.Callback paramCallback);
  
  Window.Callback wrapWindowCallback(Window.Callback paramCallback) {
    return (Window.Callback)new AppCompatDelegateImplBase$AppCompatWindowCallbackBase(this, paramCallback);
  }
  
  static {
    boolean bool;
    if (Build.VERSION.SDK_INT < 21) {
      bool = true;
    } else {
      bool = false;
    } 
    SHOULD_INSTALL_EXCEPTION_HANDLER = bool;
    if (SHOULD_INSTALL_EXCEPTION_HANDLER && !sInstalledExceptionHandler) {
      Thread.setDefaultUncaughtExceptionHandler(new AppCompatDelegateImplBase$1(Thread.getDefaultUncaughtExceptionHandler()));
      sInstalledExceptionHandler = true;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */