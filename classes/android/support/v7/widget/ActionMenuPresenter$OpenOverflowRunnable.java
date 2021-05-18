package android.support.v7.widget;

import android.view.View;

class ActionMenuPresenter$OpenOverflowRunnable implements Runnable {
  private ActionMenuPresenter$OverflowPopup mPopup;
  
  public ActionMenuPresenter$OpenOverflowRunnable(ActionMenuPresenter$OverflowPopup paramActionMenuPresenter$OverflowPopup) {
    this.mPopup = paramActionMenuPresenter$OverflowPopup;
  }
  
  public void run() {
    if (ActionMenuPresenter.access$300(ActionMenuPresenter.this) != null)
      ActionMenuPresenter.access$400(ActionMenuPresenter.this).changeMenuMode(); 
    View view = (View)ActionMenuPresenter.access$500(ActionMenuPresenter.this);
    if (view != null && view.getWindowToken() != null && this.mPopup.tryShow())
      ActionMenuPresenter.this.mOverflowPopup = this.mPopup; 
    ActionMenuPresenter.this.mPostedOpenRunnable = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuPresenter$OpenOverflowRunnable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */