package android.support.graphics.drawable;

import android.graphics.drawable.Animatable;
import android.support.annotation.NonNull;

public interface Animatable2Compat extends Animatable {
  void clearAnimationCallbacks();
  
  void registerAnimationCallback(@NonNull Animatable2Compat$AnimationCallback paramAnimatable2Compat$AnimationCallback);
  
  boolean unregisterAnimationCallback(@NonNull Animatable2Compat$AnimationCallback paramAnimatable2Compat$AnimationCallback);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\Animatable2Compat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */