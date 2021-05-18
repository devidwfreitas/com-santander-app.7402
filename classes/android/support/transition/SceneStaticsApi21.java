package android.support.transition;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.transition.Scene;
import android.view.ViewGroup;

@TargetApi(21)
@RequiresApi(21)
class SceneStaticsApi21 extends SceneStaticsImpl {
  public SceneImpl getSceneForLayout(ViewGroup paramViewGroup, int paramInt, Context paramContext) {
    SceneApi21 sceneApi21 = new SceneApi21();
    sceneApi21.mScene = Scene.getSceneForLayout(paramViewGroup, paramInt, paramContext);
    return sceneApi21;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\SceneStaticsApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */