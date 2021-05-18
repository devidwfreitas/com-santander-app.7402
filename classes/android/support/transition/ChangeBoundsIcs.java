package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;

@TargetApi(14)
@RequiresApi(14)
class ChangeBoundsIcs extends TransitionIcs implements ChangeBoundsInterface {
  public ChangeBoundsIcs(TransitionInterface paramTransitionInterface) {
    init(paramTransitionInterface, new ChangeBoundsPort());
  }
  
  public void setResizeClip(boolean paramBoolean) {
    ((ChangeBoundsPort)this.mTransition).setResizeClip(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\ChangeBoundsIcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */