package android.support.v4.app;

import android.graphics.Rect;
import android.support.v4.util.ArrayMap;
import android.view.View;

final class FragmentTransition$3 implements Runnable {
  public void run() {
    FragmentTransition.access$200(inFragment, outFragment, inIsPop, inSharedElements, false);
    if (epicenterView != null)
      FragmentTransitionCompat21.getBoundsOnScreen(epicenterView, epicenter); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTransition$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */