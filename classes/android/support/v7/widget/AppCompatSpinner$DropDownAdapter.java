package android.support.v7.widget;

import android.content.res.Resources;
import android.database.DataSetObserver;
import android.os.Build;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

class AppCompatSpinner$DropDownAdapter implements ListAdapter, SpinnerAdapter {
  private SpinnerAdapter mAdapter;
  
  private ListAdapter mListAdapter;
  
  public AppCompatSpinner$DropDownAdapter(@Nullable SpinnerAdapter paramSpinnerAdapter, @Nullable Resources.Theme paramTheme) {
    ThemedSpinnerAdapter themedSpinnerAdapter;
    this.mAdapter = paramSpinnerAdapter;
    if (paramSpinnerAdapter instanceof ListAdapter)
      this.mListAdapter = (ListAdapter)paramSpinnerAdapter; 
    if (paramTheme != null) {
      if (Build.VERSION.SDK_INT >= 23 && paramSpinnerAdapter instanceof ThemedSpinnerAdapter) {
        themedSpinnerAdapter = (ThemedSpinnerAdapter)paramSpinnerAdapter;
        if (themedSpinnerAdapter.getDropDownViewTheme() != paramTheme)
          themedSpinnerAdapter.setDropDownViewTheme(paramTheme); 
        return;
      } 
    } else {
      return;
    } 
    if (themedSpinnerAdapter instanceof ThemedSpinnerAdapter) {
      ThemedSpinnerAdapter themedSpinnerAdapter1 = (ThemedSpinnerAdapter)themedSpinnerAdapter;
      if (themedSpinnerAdapter1.getDropDownViewTheme() == null) {
        themedSpinnerAdapter1.setDropDownViewTheme(paramTheme);
        return;
      } 
    } 
  }
  
  public boolean areAllItemsEnabled() {
    ListAdapter listAdapter = this.mListAdapter;
    return (listAdapter != null) ? listAdapter.areAllItemsEnabled() : true;
  }
  
  public int getCount() {
    return (this.mAdapter == null) ? 0 : this.mAdapter.getCount();
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    return (this.mAdapter == null) ? null : this.mAdapter.getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public Object getItem(int paramInt) {
    return (this.mAdapter == null) ? null : this.mAdapter.getItem(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return (this.mAdapter == null) ? -1L : this.mAdapter.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt) {
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    return getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount() {
    return 1;
  }
  
  public boolean hasStableIds() {
    return (this.mAdapter != null && this.mAdapter.hasStableIds());
  }
  
  public boolean isEmpty() {
    return (getCount() == 0);
  }
  
  public boolean isEnabled(int paramInt) {
    ListAdapter listAdapter = this.mListAdapter;
    return (listAdapter != null) ? listAdapter.isEnabled(paramInt) : true;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver) {
    if (this.mAdapter != null)
      this.mAdapter.registerDataSetObserver(paramDataSetObserver); 
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver) {
    if (this.mAdapter != null)
      this.mAdapter.unregisterDataSetObserver(paramDataSetObserver); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatSpinner$DropDownAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */