package android.support.transition;

import android.view.View;
import android.view.ViewGroup;

abstract class SceneImpl {
  public abstract void enter();
  
  public abstract void exit();
  
  public abstract ViewGroup getSceneRoot();
  
  public abstract void init(ViewGroup paramViewGroup);
  
  public abstract void init(ViewGroup paramViewGroup, View paramView);
  
  public abstract void setEnterAction(Runnable paramRunnable);
  
  public abstract void setExitAction(Runnable paramRunnable);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\SceneImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */