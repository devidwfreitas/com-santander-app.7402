package android.support.v4.media.session;

import android.support.v4.media.VolumeProviderCompat;

class MediaSessionCompat$MediaSessionImplBase$1 extends VolumeProviderCompat.Callback {
  public void onVolumeChanged(VolumeProviderCompat paramVolumeProviderCompat) {
    if (MediaSessionCompat$MediaSessionImplBase.this.mVolumeProvider != paramVolumeProviderCompat)
      return; 
    ParcelableVolumeInfo parcelableVolumeInfo = new ParcelableVolumeInfo(MediaSessionCompat$MediaSessionImplBase.this.mVolumeType, MediaSessionCompat$MediaSessionImplBase.this.mLocalStream, paramVolumeProviderCompat.getVolumeControl(), paramVolumeProviderCompat.getMaxVolume(), paramVolumeProviderCompat.getCurrentVolume());
    MediaSessionCompat$MediaSessionImplBase.this.sendVolumeInfoChanged(parcelableVolumeInfo);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$MediaSessionImplBase$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */