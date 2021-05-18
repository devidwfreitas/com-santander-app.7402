package android.support.transition;

import android.support.v4.util.ArrayMap;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;

class TransitionManagerPort$MultiListener implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {
  ViewGroup mSceneRoot;
  
  TransitionPort mTransition;
  
  TransitionManagerPort$MultiListener(TransitionPort paramTransitionPort, ViewGroup paramViewGroup) {
    this.mTransition = paramTransitionPort;
    this.mSceneRoot = paramViewGroup;
  }
  
  private void removeListeners() {
    this.mSceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
    this.mSceneRoot.removeOnAttachStateChangeListener(this);
  }
  
  public boolean onPreDraw() {
    ArrayList arrayList;
    removeListeners();
    TransitionManagerPort.sPendingTransitions.remove(this.mSceneRoot);
    ArrayMap<ViewGroup, ArrayList<TransitionPort>> arrayMap = TransitionManagerPort.getRunningTransitions();
    ArrayList<?> arrayList1 = (ArrayList)arrayMap.get(this.mSceneRoot);
    if (arrayList1 == null) {
      arrayList1 = new ArrayList();
      arrayMap.put(this.mSceneRoot, arrayList1);
      arrayList = null;
    } else if (arrayList1.size() > 0) {
      arrayList = new ArrayList(arrayList1);
    } else {
      arrayList = null;
    } 
    arrayList1.add(this.mTransition);
    this.mTransition.addListener(new TransitionManagerPort$MultiListener$1(this, arrayMap));
    this.mTransition.captureValues(this.mSceneRoot, false);
    if (arrayList != null) {
      Iterator<TransitionPort> iterator = arrayList.iterator();
      while (iterator.hasNext())
        ((TransitionPort)iterator.next()).resume((View)this.mSceneRoot); 
    } 
    this.mTransition.playTransition(this.mSceneRoot);
    return true;
  }
  
  public void onViewAttachedToWindow(View paramView) {}
  
  public void onViewDetachedFromWindow(View paramView) {
    removeListeners();
    TransitionManagerPort.sPendingTransitions.remove(this.mSceneRoot);
    ArrayList arrayList = (ArrayList)TransitionManagerPort.getRunningTransitions().get(this.mSceneRoot);
    if (arrayList != null && arrayList.size() > 0) {
      Iterator<TransitionPort> iterator = arrayList.iterator();
      while (iterator.hasNext())
        ((TransitionPort)iterator.next()).resume((View)this.mSceneRoot); 
    } 
    this.mTransition.clearValues(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionManagerPort$MultiListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */