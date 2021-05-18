package android.support.v4.app;

import android.view.MenuItem;

class ShareCompat$ShareCompatImplICS extends ShareCompat$ShareCompatImplBase {
  public void configureMenuItem(MenuItem paramMenuItem, ShareCompat$IntentBuilder paramShareCompat$IntentBuilder) {
    ShareCompatICS.configureMenuItem(paramMenuItem, paramShareCompat$IntentBuilder.getActivity(), paramShareCompat$IntentBuilder.getIntent());
    if (shouldAddChooserIntent(paramMenuItem))
      paramMenuItem.setIntent(paramShareCompat$IntentBuilder.createChooserIntent()); 
  }
  
  boolean shouldAddChooserIntent(MenuItem paramMenuItem) {
    return !paramMenuItem.hasSubMenu();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ShareCompat$ShareCompatImplICS.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */