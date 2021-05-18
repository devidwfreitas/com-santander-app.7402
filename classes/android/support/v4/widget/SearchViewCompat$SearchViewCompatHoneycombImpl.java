package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.view.View;

class SearchViewCompat$SearchViewCompatHoneycombImpl extends SearchViewCompat$SearchViewCompatStubImpl {
  protected void checkIfLegalArg(View paramView) {
    SearchViewCompatHoneycomb.checkIfLegalArg(paramView);
  }
  
  public CharSequence getQuery(View paramView) {
    checkIfLegalArg(paramView);
    return SearchViewCompatHoneycomb.getQuery(paramView);
  }
  
  public boolean isIconified(View paramView) {
    checkIfLegalArg(paramView);
    return SearchViewCompatHoneycomb.isIconified(paramView);
  }
  
  public boolean isQueryRefinementEnabled(View paramView) {
    checkIfLegalArg(paramView);
    return SearchViewCompatHoneycomb.isQueryRefinementEnabled(paramView);
  }
  
  public boolean isSubmitButtonEnabled(View paramView) {
    checkIfLegalArg(paramView);
    return SearchViewCompatHoneycomb.isSubmitButtonEnabled(paramView);
  }
  
  public Object newOnCloseListener(SearchViewCompat$OnCloseListener paramSearchViewCompat$OnCloseListener) {
    return SearchViewCompatHoneycomb.newOnCloseListener(new SearchViewCompat$SearchViewCompatHoneycombImpl$2(this, paramSearchViewCompat$OnCloseListener));
  }
  
  public Object newOnQueryTextListener(SearchViewCompat$OnQueryTextListener paramSearchViewCompat$OnQueryTextListener) {
    return SearchViewCompatHoneycomb.newOnQueryTextListener(new SearchViewCompat$SearchViewCompatHoneycombImpl$1(this, paramSearchViewCompat$OnQueryTextListener));
  }
  
  public View newSearchView(Context paramContext) {
    return SearchViewCompatHoneycomb.newSearchView(paramContext);
  }
  
  public void setIconified(View paramView, boolean paramBoolean) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setIconified(paramView, paramBoolean);
  }
  
  public void setMaxWidth(View paramView, int paramInt) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setMaxWidth(paramView, paramInt);
  }
  
  public void setOnCloseListener(View paramView, SearchViewCompat$OnCloseListener paramSearchViewCompat$OnCloseListener) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setOnCloseListener(paramView, newOnCloseListener(paramSearchViewCompat$OnCloseListener));
  }
  
  public void setOnQueryTextListener(View paramView, SearchViewCompat$OnQueryTextListener paramSearchViewCompat$OnQueryTextListener) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setOnQueryTextListener(paramView, newOnQueryTextListener(paramSearchViewCompat$OnQueryTextListener));
  }
  
  public void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setQuery(paramView, paramCharSequence, paramBoolean);
  }
  
  public void setQueryHint(View paramView, CharSequence paramCharSequence) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setQueryHint(paramView, paramCharSequence);
  }
  
  public void setQueryRefinementEnabled(View paramView, boolean paramBoolean) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setQueryRefinementEnabled(paramView, paramBoolean);
  }
  
  public void setSearchableInfo(View paramView, ComponentName paramComponentName) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setSearchableInfo(paramView, paramComponentName);
  }
  
  public void setSubmitButtonEnabled(View paramView, boolean paramBoolean) {
    checkIfLegalArg(paramView);
    SearchViewCompatHoneycomb.setSubmitButtonEnabled(paramView, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SearchViewCompat$SearchViewCompatHoneycombImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */