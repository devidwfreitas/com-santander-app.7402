package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.view.View;

interface SearchViewCompat$SearchViewCompatImpl {
  CharSequence getQuery(View paramView);
  
  boolean isIconified(View paramView);
  
  boolean isQueryRefinementEnabled(View paramView);
  
  boolean isSubmitButtonEnabled(View paramView);
  
  Object newOnCloseListener(SearchViewCompat$OnCloseListener paramSearchViewCompat$OnCloseListener);
  
  Object newOnQueryTextListener(SearchViewCompat$OnQueryTextListener paramSearchViewCompat$OnQueryTextListener);
  
  View newSearchView(Context paramContext);
  
  void setIconified(View paramView, boolean paramBoolean);
  
  void setImeOptions(View paramView, int paramInt);
  
  void setInputType(View paramView, int paramInt);
  
  void setMaxWidth(View paramView, int paramInt);
  
  void setOnCloseListener(View paramView, SearchViewCompat$OnCloseListener paramSearchViewCompat$OnCloseListener);
  
  void setOnQueryTextListener(View paramView, SearchViewCompat$OnQueryTextListener paramSearchViewCompat$OnQueryTextListener);
  
  void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean);
  
  void setQueryHint(View paramView, CharSequence paramCharSequence);
  
  void setQueryRefinementEnabled(View paramView, boolean paramBoolean);
  
  void setSearchableInfo(View paramView, ComponentName paramComponentName);
  
  void setSubmitButtonEnabled(View paramView, boolean paramBoolean);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SearchViewCompat$SearchViewCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */