package android.support.v7.widget;

import android.view.View;

class ScrollingTabContainerView$1 implements Runnable {
  public void run() {
    int i = tabView.getLeft();
    int j = (ScrollingTabContainerView.this.getWidth() - tabView.getWidth()) / 2;
    ScrollingTabContainerView.this.smoothScrollTo(i - j, 0);
    ScrollingTabContainerView.this.mTabSelector = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ScrollingTabContainerView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */