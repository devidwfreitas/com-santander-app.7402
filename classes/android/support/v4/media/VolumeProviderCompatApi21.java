package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.VolumeProvider;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class VolumeProviderCompatApi21 {
  public static Object createVolumeProvider(int paramInt1, int paramInt2, int paramInt3, VolumeProviderCompatApi21$Delegate paramVolumeProviderCompatApi21$Delegate) {
    return new VolumeProviderCompatApi21$1(paramInt1, paramInt2, paramInt3, paramVolumeProviderCompatApi21$Delegate);
  }
  
  public static void setCurrentVolume(Object paramObject, int paramInt) {
    ((VolumeProvider)paramObject).setCurrentVolume(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\VolumeProviderCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */