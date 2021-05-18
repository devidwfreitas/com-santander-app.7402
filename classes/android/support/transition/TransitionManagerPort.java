package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@TargetApi(14)
@RequiresApi(14)
class TransitionManagerPort {
  private static final String[] EMPTY_STRINGS = new String[0];
  
  private static String LOG_TAG = "TransitionManager";
  
  private static TransitionPort sDefaultTransition = new AutoTransitionPort();
  
  static ArrayList<ViewGroup> sPendingTransitions;
  
  private static ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<TransitionPort>>>> sRunningTransitions = new ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<TransitionPort>>>>();
  
  ArrayMap<String, ArrayMap<ScenePort, TransitionPort>> mNameSceneTransitions = new ArrayMap();
  
  ArrayMap<ScenePort, ArrayMap<String, TransitionPort>> mSceneNameTransitions = new ArrayMap();
  
  ArrayMap<ScenePort, ArrayMap<ScenePort, TransitionPort>> mScenePairTransitions = new ArrayMap();
  
  ArrayMap<ScenePort, TransitionPort> mSceneTransitions = new ArrayMap();
  
  static {
    sPendingTransitions = new ArrayList<ViewGroup>();
  }
  
  public static void beginDelayedTransition(ViewGroup paramViewGroup) {
    beginDelayedTransition(paramViewGroup, null);
  }
  
  public static void beginDelayedTransition(ViewGroup paramViewGroup, TransitionPort paramTransitionPort) {
    if (!sPendingTransitions.contains(paramViewGroup) && ViewCompat.isLaidOut((View)paramViewGroup)) {
      sPendingTransitions.add(paramViewGroup);
      TransitionPort transitionPort = paramTransitionPort;
      if (paramTransitionPort == null)
        transitionPort = sDefaultTransition; 
      paramTransitionPort = transitionPort.clone();
      sceneChangeSetup(paramViewGroup, paramTransitionPort);
      ScenePort.setCurrentScene((View)paramViewGroup, null);
      sceneChangeRunTransition(paramViewGroup, paramTransitionPort);
    } 
  }
  
  private static void changeScene(ScenePort paramScenePort, TransitionPort paramTransitionPort) {
    ViewGroup viewGroup = paramScenePort.getSceneRoot();
    TransitionPort transitionPort = null;
    if (paramTransitionPort != null) {
      transitionPort = paramTransitionPort.clone();
      transitionPort.setSceneRoot(viewGroup);
    } 
    ScenePort scenePort = ScenePort.getCurrentScene((View)viewGroup);
    if (scenePort != null && scenePort.isCreatedFromLayoutResource())
      transitionPort.setCanRemoveViews(true); 
    sceneChangeSetup(viewGroup, transitionPort);
    paramScenePort.enter();
    sceneChangeRunTransition(viewGroup, transitionPort);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public static TransitionPort getDefaultTransition() {
    return sDefaultTransition;
  }
  
  static ArrayMap<ViewGroup, ArrayList<TransitionPort>> getRunningTransitions() {
    WeakReference<ArrayMap> weakReference2 = (WeakReference)sRunningTransitions.get();
    if (weakReference2 != null) {
      WeakReference<ArrayMap> weakReference = weakReference2;
      if (weakReference2.get() == null) {
        weakReference = new WeakReference<ArrayMap>(new ArrayMap());
        sRunningTransitions.set(weakReference);
        return weakReference.get();
      } 
      return weakReference.get();
    } 
    WeakReference<ArrayMap> weakReference1 = new WeakReference<ArrayMap>(new ArrayMap());
    sRunningTransitions.set(weakReference1);
    return weakReference1.get();
  }
  
  private TransitionPort getTransition(ScenePort paramScenePort) {
    ViewGroup viewGroup = paramScenePort.getSceneRoot();
    if (viewGroup != null) {
      ScenePort scenePort = ScenePort.getCurrentScene((View)viewGroup);
      if (scenePort != null) {
        ArrayMap arrayMap = (ArrayMap)this.mScenePairTransitions.get(paramScenePort);
        if (arrayMap != null) {
          TransitionPort transitionPort = (TransitionPort)arrayMap.get(scenePort);
          if (transitionPort != null)
            return transitionPort; 
        } 
      } 
    } 
    TransitionPort transitionPort2 = (TransitionPort)this.mSceneTransitions.get(paramScenePort);
    TransitionPort transitionPort1 = transitionPort2;
    return (transitionPort2 == null) ? sDefaultTransition : transitionPort1;
  }
  
  public static void go(ScenePort paramScenePort) {
    changeScene(paramScenePort, sDefaultTransition);
  }
  
  public static void go(ScenePort paramScenePort, TransitionPort paramTransitionPort) {
    changeScene(paramScenePort, paramTransitionPort);
  }
  
  private static void sceneChangeRunTransition(ViewGroup paramViewGroup, TransitionPort paramTransitionPort) {
    if (paramTransitionPort != null && paramViewGroup != null) {
      TransitionManagerPort$MultiListener transitionManagerPort$MultiListener = new TransitionManagerPort$MultiListener(paramTransitionPort, paramViewGroup);
      paramViewGroup.addOnAttachStateChangeListener(transitionManagerPort$MultiListener);
      paramViewGroup.getViewTreeObserver().addOnPreDrawListener(transitionManagerPort$MultiListener);
    } 
  }
  
  private static void sceneChangeSetup(ViewGroup paramViewGroup, TransitionPort paramTransitionPort) {
    ArrayList arrayList = (ArrayList)getRunningTransitions().get(paramViewGroup);
    if (arrayList != null && arrayList.size() > 0) {
      Iterator<TransitionPort> iterator = arrayList.iterator();
      while (iterator.hasNext())
        ((TransitionPort)iterator.next()).pause((View)paramViewGroup); 
    } 
    if (paramTransitionPort != null)
      paramTransitionPort.captureValues(paramViewGroup, true); 
    ScenePort scenePort = ScenePort.getCurrentScene((View)paramViewGroup);
    if (scenePort != null)
      scenePort.exit(); 
  }
  
  public TransitionPort getNamedTransition(ScenePort paramScenePort, String paramString) {
    ArrayMap arrayMap = (ArrayMap)this.mSceneNameTransitions.get(paramScenePort);
    return (arrayMap != null) ? (TransitionPort)arrayMap.get(paramString) : null;
  }
  
  public TransitionPort getNamedTransition(String paramString, ScenePort paramScenePort) {
    ArrayMap arrayMap = (ArrayMap)this.mNameSceneTransitions.get(paramString);
    return (arrayMap != null) ? (TransitionPort)arrayMap.get(paramScenePort) : null;
  }
  
  public String[] getTargetSceneNames(ScenePort paramScenePort) {
    ArrayMap arrayMap = (ArrayMap)this.mSceneNameTransitions.get(paramScenePort);
    if (arrayMap == null)
      return EMPTY_STRINGS; 
    int j = arrayMap.size();
    String[] arrayOfString = new String[j];
    for (int i = 0; i < j; i++)
      arrayOfString[i] = (String)arrayMap.keyAt(i); 
    return arrayOfString;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setDefaultTransition(TransitionPort paramTransitionPort) {
    sDefaultTransition = paramTransitionPort;
  }
  
  public void setTransition(ScenePort paramScenePort1, ScenePort paramScenePort2, TransitionPort paramTransitionPort) {
    ArrayMap arrayMap2 = (ArrayMap)this.mScenePairTransitions.get(paramScenePort2);
    ArrayMap arrayMap1 = arrayMap2;
    if (arrayMap2 == null) {
      arrayMap1 = new ArrayMap();
      this.mScenePairTransitions.put(paramScenePort2, arrayMap1);
    } 
    arrayMap1.put(paramScenePort1, paramTransitionPort);
  }
  
  public void setTransition(ScenePort paramScenePort, TransitionPort paramTransitionPort) {
    this.mSceneTransitions.put(paramScenePort, paramTransitionPort);
  }
  
  public void setTransition(ScenePort paramScenePort, String paramString, TransitionPort paramTransitionPort) {
    ArrayMap arrayMap2 = (ArrayMap)this.mSceneNameTransitions.get(paramScenePort);
    ArrayMap arrayMap1 = arrayMap2;
    if (arrayMap2 == null) {
      arrayMap1 = new ArrayMap();
      this.mSceneNameTransitions.put(paramScenePort, arrayMap1);
    } 
    arrayMap1.put(paramString, paramTransitionPort);
  }
  
  public void setTransition(String paramString, ScenePort paramScenePort, TransitionPort paramTransitionPort) {
    ArrayMap arrayMap2 = (ArrayMap)this.mNameSceneTransitions.get(paramString);
    ArrayMap arrayMap1 = arrayMap2;
    if (arrayMap2 == null) {
      arrayMap1 = new ArrayMap();
      this.mNameSceneTransitions.put(paramString, arrayMap1);
    } 
    arrayMap1.put(paramScenePort, paramTransitionPort);
  }
  
  public void transitionTo(ScenePort paramScenePort) {
    changeScene(paramScenePort, getTransition(paramScenePort));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionManagerPort.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */