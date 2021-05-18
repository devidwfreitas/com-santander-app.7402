package android.support.transition;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
class SceneStaticsIcs extends SceneStaticsImpl {
  public SceneImpl getSceneForLayout(ViewGroup paramViewGroup, int paramInt, Context paramContext) {
    SceneIcs sceneIcs = new SceneIcs();
    sceneIcs.mScene = ScenePort.getSceneForLayout(paramViewGroup, paramInt, paramContext);
    return sceneIcs;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\SceneStaticsIcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */