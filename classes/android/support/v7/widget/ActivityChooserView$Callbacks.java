package android.support.v7.widget;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.view.View;
import android.widget.AdapterView;
import android.widget.PopupWindow;

class ActivityChooserView$Callbacks implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
  private void notifyOnDismissListener() {
    if (ActivityChooserView.this.mOnDismissListener != null)
      ActivityChooserView.this.mOnDismissListener.onDismiss(); 
  }
  
  public void onClick(View paramView) {
    Intent intent;
    if (paramView == ActivityChooserView.this.mDefaultActivityButton) {
      ActivityChooserView.this.dismissPopup();
      ResolveInfo resolveInfo = ActivityChooserView.this.mAdapter.getDefaultActivity();
      int i = ActivityChooserView.this.mAdapter.getDataModel().getActivityIndex(resolveInfo);
      intent = ActivityChooserView.this.mAdapter.getDataModel().chooseActivity(i);
      if (intent != null) {
        intent.addFlags(524288);
        ActivityChooserView.this.getContext().startActivity(intent);
      } 
      return;
    } 
    if (intent == ActivityChooserView.this.mExpandActivityOverflowButton) {
      ActivityChooserView.this.mIsSelectingDefaultActivity = false;
      ActivityChooserView.this.showPopupUnchecked(ActivityChooserView.this.mInitialActivityCount);
      return;
    } 
    throw new IllegalArgumentException();
  }
  
  public void onDismiss() {
    notifyOnDismissListener();
    if (ActivityChooserView.this.mProvider != null)
      ActivityChooserView.this.mProvider.subUiVisibilityChanged(false); 
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    switch (((ActivityChooserView$ActivityChooserViewAdapter)paramAdapterView.getAdapter()).getItemViewType(paramInt)) {
      default:
        throw new IllegalArgumentException();
      case 1:
        ActivityChooserView.this.showPopupUnchecked(2147483647);
        return;
      case 0:
        break;
    } 
    ActivityChooserView.this.dismissPopup();
    if (ActivityChooserView.this.mIsSelectingDefaultActivity) {
      if (paramInt > 0) {
        ActivityChooserView.this.mAdapter.getDataModel().setDefaultActivity(paramInt);
        return;
      } 
      return;
    } 
    if (!ActivityChooserView.this.mAdapter.getShowDefaultActivity())
      paramInt++; 
    Intent intent = ActivityChooserView.this.mAdapter.getDataModel().chooseActivity(paramInt);
    if (intent != null) {
      intent.addFlags(524288);
      ActivityChooserView.this.getContext().startActivity(intent);
      return;
    } 
  }
  
  public boolean onLongClick(View paramView) {
    if (paramView == ActivityChooserView.this.mDefaultActivityButton) {
      if (ActivityChooserView.this.mAdapter.getCount() > 0) {
        ActivityChooserView.this.mIsSelectingDefaultActivity = true;
        ActivityChooserView.this.showPopupUnchecked(ActivityChooserView.this.mInitialActivityCount);
      } 
      return true;
    } 
    throw new IllegalArgumentException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserView$Callbacks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */