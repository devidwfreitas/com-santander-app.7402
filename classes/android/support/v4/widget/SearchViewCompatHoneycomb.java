package android.support.v4.widget;

import android.annotation.TargetApi;
import android.app.SearchManager;
import android.content.ComponentName;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.widget.SearchView;

@TargetApi(11)
@RequiresApi(11)
class SearchViewCompatHoneycomb {
  public static void checkIfLegalArg(View paramView) {
    if (paramView == null)
      throw new IllegalArgumentException("searchView must be non-null"); 
    if (!(paramView instanceof SearchView))
      throw new IllegalArgumentException("searchView must be an instance ofandroid.widget.SearchView"); 
  }
  
  public static CharSequence getQuery(View paramView) {
    return ((SearchView)paramView).getQuery();
  }
  
  public static boolean isIconified(View paramView) {
    return ((SearchView)paramView).isIconified();
  }
  
  public static boolean isQueryRefinementEnabled(View paramView) {
    return ((SearchView)paramView).isQueryRefinementEnabled();
  }
  
  public static boolean isSubmitButtonEnabled(View paramView) {
    return ((SearchView)paramView).isSubmitButtonEnabled();
  }
  
  public static Object newOnCloseListener(SearchViewCompatHoneycomb$OnCloseListenerCompatBridge paramSearchViewCompatHoneycomb$OnCloseListenerCompatBridge) {
    return new SearchViewCompatHoneycomb$2(paramSearchViewCompatHoneycomb$OnCloseListenerCompatBridge);
  }
  
  public static Object newOnQueryTextListener(SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge paramSearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge) {
    return new SearchViewCompatHoneycomb$1(paramSearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge);
  }
  
  public static View newSearchView(Context paramContext) {
    return (View)new SearchView(paramContext);
  }
  
  public static void setIconified(View paramView, boolean paramBoolean) {
    ((SearchView)paramView).setIconified(paramBoolean);
  }
  
  public static void setMaxWidth(View paramView, int paramInt) {
    ((SearchView)paramView).setMaxWidth(paramInt);
  }
  
  public static void setOnCloseListener(View paramView, Object paramObject) {
    ((SearchView)paramView).setOnCloseListener((SearchView.OnCloseListener)paramObject);
  }
  
  public static void setOnQueryTextListener(View paramView, Object paramObject) {
    ((SearchView)paramView).setOnQueryTextListener((SearchView.OnQueryTextListener)paramObject);
  }
  
  public static void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean) {
    ((SearchView)paramView).setQuery(paramCharSequence, paramBoolean);
  }
  
  public static void setQueryHint(View paramView, CharSequence paramCharSequence) {
    ((SearchView)paramView).setQueryHint(paramCharSequence);
  }
  
  public static void setQueryRefinementEnabled(View paramView, boolean paramBoolean) {
    ((SearchView)paramView).setQueryRefinementEnabled(paramBoolean);
  }
  
  public static void setSearchableInfo(View paramView, ComponentName paramComponentName) {
    SearchView searchView = (SearchView)paramView;
    searchView.setSearchableInfo(((SearchManager)searchView.getContext().getSystemService("search")).getSearchableInfo(paramComponentName));
  }
  
  public static void setSubmitButtonEnabled(View paramView, boolean paramBoolean) {
    ((SearchView)paramView).setSubmitButtonEnabled(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SearchViewCompatHoneycomb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */