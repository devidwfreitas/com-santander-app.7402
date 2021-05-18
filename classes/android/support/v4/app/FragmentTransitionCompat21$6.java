package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;

final class FragmentTransitionCompat21$6 extends Transition.EpicenterCallback {
  public Rect onGetEpicenter(Transition paramTransition) {
    return (epicenter == null || epicenter.isEmpty()) ? null : epicenter;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTransitionCompat21$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */