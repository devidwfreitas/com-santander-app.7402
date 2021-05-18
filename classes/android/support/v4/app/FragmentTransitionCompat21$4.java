package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;

final class FragmentTransitionCompat21$4 implements Runnable {
  public void run() {
    int j = sharedElementsIn.size();
    for (int i = 0; i < j; i++) {
      View view = sharedElementsIn.get(i);
      String str = view.getTransitionName();
      if (str != null)
        view.setTransitionName(FragmentTransitionCompat21.access$000(nameOverrides, str)); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTransitionCompat21$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */