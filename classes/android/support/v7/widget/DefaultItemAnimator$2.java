package android.support.v7.widget;

import java.util.ArrayList;

class DefaultItemAnimator$2 implements Runnable {
  public void run() {
    for (DefaultItemAnimator$ChangeInfo defaultItemAnimator$ChangeInfo : changes)
      DefaultItemAnimator.this.animateChangeImpl(defaultItemAnimator$ChangeInfo); 
    changes.clear();
    DefaultItemAnimator.this.mChangesList.remove(changes);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */