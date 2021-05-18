package android.support.v7.widget;

import android.content.Intent;

class ShareActionProvider$ShareActivityChooserModelPolicy implements ActivityChooserModel$OnChooseActivityListener {
  public boolean onChooseActivity(ActivityChooserModel paramActivityChooserModel, Intent paramIntent) {
    if (ShareActionProvider.this.mOnShareTargetSelectedListener != null)
      ShareActionProvider.this.mOnShareTargetSelectedListener.onShareTargetSelected(ShareActionProvider.this, paramIntent); 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ShareActionProvider$ShareActivityChooserModelPolicy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */