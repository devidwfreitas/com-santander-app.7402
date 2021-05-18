package android.support.v4.app;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.RestrictTo;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

public abstract class FragmentManager {
  public static final int POP_BACK_STACK_INCLUSIVE = 1;
  
  public static void enableDebugLogging(boolean paramBoolean) {
    FragmentManagerImpl.DEBUG = paramBoolean;
  }
  
  public abstract void addOnBackStackChangedListener(FragmentManager$OnBackStackChangedListener paramFragmentManager$OnBackStackChangedListener);
  
  public abstract FragmentTransaction beginTransaction();
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract boolean executePendingTransactions();
  
  public abstract Fragment findFragmentById(@IdRes int paramInt);
  
  public abstract Fragment findFragmentByTag(String paramString);
  
  public abstract FragmentManager$BackStackEntry getBackStackEntryAt(int paramInt);
  
  public abstract int getBackStackEntryCount();
  
  public abstract Fragment getFragment(Bundle paramBundle, String paramString);
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public abstract List<Fragment> getFragments();
  
  public abstract boolean isDestroyed();
  
  @Deprecated
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public FragmentTransaction openTransaction() {
    return beginTransaction();
  }
  
  public abstract void popBackStack();
  
  public abstract void popBackStack(int paramInt1, int paramInt2);
  
  public abstract void popBackStack(String paramString, int paramInt);
  
  public abstract boolean popBackStackImmediate();
  
  public abstract boolean popBackStackImmediate(int paramInt1, int paramInt2);
  
  public abstract boolean popBackStackImmediate(String paramString, int paramInt);
  
  public abstract void putFragment(Bundle paramBundle, String paramString, Fragment paramFragment);
  
  public abstract void registerFragmentLifecycleCallbacks(FragmentManager$FragmentLifecycleCallbacks paramFragmentManager$FragmentLifecycleCallbacks, boolean paramBoolean);
  
  public abstract void removeOnBackStackChangedListener(FragmentManager$OnBackStackChangedListener paramFragmentManager$OnBackStackChangedListener);
  
  public abstract Fragment$SavedState saveFragmentInstanceState(Fragment paramFragment);
  
  public abstract void unregisterFragmentLifecycleCallbacks(FragmentManager$FragmentLifecycleCallbacks paramFragmentManager$FragmentLifecycleCallbacks);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */