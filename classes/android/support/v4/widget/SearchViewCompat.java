package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.view.View;

public final class SearchViewCompat {
  private static final SearchViewCompat$SearchViewCompatImpl IMPL = new SearchViewCompat$SearchViewCompatStubImpl();
  
  private SearchViewCompat(Context paramContext) {}
  
  public static CharSequence getQuery(View paramView) {
    return IMPL.getQuery(paramView);
  }
  
  public static boolean isIconified(View paramView) {
    return IMPL.isIconified(paramView);
  }
  
  public static boolean isQueryRefinementEnabled(View paramView) {
    return IMPL.isQueryRefinementEnabled(paramView);
  }
  
  public static boolean isSubmitButtonEnabled(View paramView) {
    return IMPL.isSubmitButtonEnabled(paramView);
  }
  
  public static View newSearchView(Context paramContext) {
    return IMPL.newSearchView(paramContext);
  }
  
  public static void setIconified(View paramView, boolean paramBoolean) {
    IMPL.setIconified(paramView, paramBoolean);
  }
  
  public static void setImeOptions(View paramView, int paramInt) {
    IMPL.setImeOptions(paramView, paramInt);
  }
  
  public static void setInputType(View paramView, int paramInt) {
    IMPL.setInputType(paramView, paramInt);
  }
  
  public static void setMaxWidth(View paramView, int paramInt) {
    IMPL.setMaxWidth(paramView, paramInt);
  }
  
  public static void setOnCloseListener(View paramView, SearchViewCompat$OnCloseListener paramSearchViewCompat$OnCloseListener) {
    IMPL.setOnCloseListener(paramView, paramSearchViewCompat$OnCloseListener);
  }
  
  public static void setOnQueryTextListener(View paramView, SearchViewCompat$OnQueryTextListener paramSearchViewCompat$OnQueryTextListener) {
    IMPL.setOnQueryTextListener(paramView, paramSearchViewCompat$OnQueryTextListener);
  }
  
  public static void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean) {
    IMPL.setQuery(paramView, paramCharSequence, paramBoolean);
  }
  
  public static void setQueryHint(View paramView, CharSequence paramCharSequence) {
    IMPL.setQueryHint(paramView, paramCharSequence);
  }
  
  public static void setQueryRefinementEnabled(View paramView, boolean paramBoolean) {
    IMPL.setQueryRefinementEnabled(paramView, paramBoolean);
  }
  
  public static void setSearchableInfo(View paramView, ComponentName paramComponentName) {
    IMPL.setSearchableInfo(paramView, paramComponentName);
  }
  
  public static void setSubmitButtonEnabled(View paramView, boolean paramBoolean) {
    IMPL.setSubmitButtonEnabled(paramView, paramBoolean);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new SearchViewCompat$SearchViewCompatIcsImpl();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 11) {
      IMPL = new SearchViewCompat$SearchViewCompatHoneycombImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SearchViewCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */