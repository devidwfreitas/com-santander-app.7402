package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;

final class FragmentTransitionCompat21$3 implements Runnable {
  public void run() {
    for (int i = 0; i < numSharedElements; i++) {
      ((View)sharedElementsIn.get(i)).setTransitionName(inNames.get(i));
      ((View)sharedElementsOut.get(i)).setTransitionName(outNames.get(i));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTransitionCompat21$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */