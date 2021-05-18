package android.support.v7.widget;

import android.view.View;

class ScrollingTabContainerView$TabClickListener implements View.OnClickListener {
  public void onClick(View paramView) {
    ((ScrollingTabContainerView$TabView)paramView).getTab().select();
    int j = ScrollingTabContainerView.this.mTabLayout.getChildCount();
    for (int i = 0; i < j; i++) {
      boolean bool;
      View view = ScrollingTabContainerView.this.mTabLayout.getChildAt(i);
      if (view == paramView) {
        bool = true;
      } else {
        bool = false;
      } 
      view.setSelected(bool);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ScrollingTabContainerView$TabClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */