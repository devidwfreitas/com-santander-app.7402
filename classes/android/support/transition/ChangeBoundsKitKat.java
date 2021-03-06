package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.transition.ChangeBounds;

@TargetApi(19)
@RequiresApi(19)
class ChangeBoundsKitKat extends TransitionKitKat implements ChangeBoundsInterface {
  public ChangeBoundsKitKat(TransitionInterface paramTransitionInterface) {
    init(paramTransitionInterface, new ChangeBounds());
  }
  
  public void setResizeClip(boolean paramBoolean) {
    ((ChangeBounds)this.mTransition).setResizeClip(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\ChangeBoundsKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */