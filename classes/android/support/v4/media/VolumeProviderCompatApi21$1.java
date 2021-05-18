package android.support.v4.media;

import android.media.VolumeProvider;

final class VolumeProviderCompatApi21$1 extends VolumeProvider {
  VolumeProviderCompatApi21$1(int paramInt1, int paramInt2, int paramInt3) {
    super(paramInt1, paramInt2, paramInt3);
  }
  
  public void onAdjustVolume(int paramInt) {
    delegate.onAdjustVolume(paramInt);
  }
  
  public void onSetVolumeTo(int paramInt) {
    delegate.onSetVolumeTo(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\VolumeProviderCompatApi21$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */