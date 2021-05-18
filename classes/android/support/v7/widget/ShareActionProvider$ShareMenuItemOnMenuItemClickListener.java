package android.support.v7.widget;

import android.content.Intent;
import android.view.MenuItem;

class ShareActionProvider$ShareMenuItemOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
  public boolean onMenuItemClick(MenuItem paramMenuItem) {
    Intent intent = ActivityChooserModel.get(ShareActionProvider.this.mContext, ShareActionProvider.this.mShareHistoryFileName).chooseActivity(paramMenuItem.getItemId());
    if (intent != null) {
      String str = intent.getAction();
      if ("android.intent.action.SEND".equals(str) || "android.intent.action.SEND_MULTIPLE".equals(str))
        ShareActionProvider.this.updateIntent(intent); 
      ShareActionProvider.this.mContext.startActivity(intent);
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ShareActionProvider$ShareMenuItemOnMenuItemClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */