package android.support.transition;

import android.content.Context;
import android.os.Build;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;

public class Scene {
  private static SceneStaticsImpl sImpl = new SceneStaticsIcs();
  
  SceneImpl mImpl;
  
  private Scene(SceneImpl paramSceneImpl) {
    this.mImpl = paramSceneImpl;
  }
  
  public Scene(@NonNull ViewGroup paramViewGroup) {
    this.mImpl = createSceneImpl();
    this.mImpl.init(paramViewGroup);
  }
  
  public Scene(@NonNull ViewGroup paramViewGroup, @NonNull View paramView) {
    this.mImpl = createSceneImpl();
    this.mImpl.init(paramViewGroup, paramView);
  }
  
  private SceneImpl createSceneImpl() {
    return (SceneImpl)((Build.VERSION.SDK_INT >= 21) ? new SceneApi21() : ((Build.VERSION.SDK_INT >= 19) ? new SceneKitKat() : new SceneIcs()));
  }
  
  @NonNull
  public static Scene getSceneForLayout(@NonNull ViewGroup paramViewGroup, @LayoutRes int paramInt, @NonNull Context paramContext) {
    SparseArray sparseArray = (SparseArray)paramViewGroup.getTag(R$id.transition_scene_layoutid_cache);
    if (sparseArray == null) {
      sparseArray = new SparseArray();
      paramViewGroup.setTag(R$id.transition_scene_layoutid_cache, sparseArray);
    } 
    Scene scene2 = (Scene)sparseArray.get(paramInt);
    if (scene2 != null)
      return scene2; 
    Scene scene1 = new Scene(sImpl.getSceneForLayout(paramViewGroup, paramInt, paramContext));
    sparseArray.put(paramInt, scene1);
    return scene1;
  }
  
  public void enter() {
    this.mImpl.enter();
  }
  
  public void exit() {
    this.mImpl.exit();
  }
  
  @NonNull
  public ViewGroup getSceneRoot() {
    return this.mImpl.getSceneRoot();
  }
  
  public void setEnterAction(@Nullable Runnable paramRunnable) {
    this.mImpl.setEnterAction(paramRunnable);
  }
  
  public void setExitAction(@Nullable Runnable paramRunnable) {
    this.mImpl.setExitAction(paramRunnable);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 21) {
      sImpl = new SceneStaticsApi21();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 19) {
      sImpl = new SceneStaticsKitKat();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\Scene.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */