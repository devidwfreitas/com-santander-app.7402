package android.support.v4.app;

import android.view.View;
import java.util.ArrayList;

final class FragmentTransition$2 implements Runnable {
  public void run() {
    if (enterTransition != null) {
      FragmentTransitionCompat21.removeTarget(enterTransition, nonExistentView);
      ArrayList arrayList = FragmentTransition.access$100(enterTransition, inFragment, sharedElementsIn, nonExistentView);
      enteringViews.addAll(arrayList);
    } 
    if (exitingViews != null) {
      if (exitTransition != null) {
        ArrayList<View> arrayList = new ArrayList();
        arrayList.add(nonExistentView);
        FragmentTransitionCompat21.replaceTargets(exitTransition, exitingViews, arrayList);
      } 
      exitingViews.clear();
      exitingViews.add(nonExistentView);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTransition$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */