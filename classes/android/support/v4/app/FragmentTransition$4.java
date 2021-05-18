package android.support.v4.app;

import android.graphics.Rect;
import android.support.v4.util.ArrayMap;
import android.view.View;
import java.util.ArrayList;

final class FragmentTransition$4 implements Runnable {
  public void run() {
    ArrayMap arrayMap = FragmentTransition.access$300(nameOverrides, finalSharedElementTransition, fragments);
    if (arrayMap != null) {
      sharedElementsIn.addAll(arrayMap.values());
      sharedElementsIn.add(nonExistentView);
    } 
    FragmentTransition.access$200(inFragment, outFragment, inIsPop, arrayMap, false);
    if (finalSharedElementTransition != null) {
      FragmentTransitionCompat21.swapSharedElementTargets(finalSharedElementTransition, sharedElementsOut, sharedElementsIn);
      View view = FragmentTransition.access$400(arrayMap, fragments, enterTransition, inIsPop);
      if (view != null)
        FragmentTransitionCompat21.getBoundsOnScreen(view, inEpicenter); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTransition$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */