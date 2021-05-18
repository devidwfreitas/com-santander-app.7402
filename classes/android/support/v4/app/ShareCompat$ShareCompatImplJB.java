package android.support.v4.app;

import android.view.MenuItem;

class ShareCompat$ShareCompatImplJB extends ShareCompat$ShareCompatImplICS {
  public String escapeHtml(CharSequence paramCharSequence) {
    return ShareCompatJB.escapeHtml(paramCharSequence);
  }
  
  boolean shouldAddChooserIntent(MenuItem paramMenuItem) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ShareCompat$ShareCompatImplJB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */