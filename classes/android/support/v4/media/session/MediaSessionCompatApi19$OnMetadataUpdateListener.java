package android.support.v4.media.session;

import android.media.RemoteControlClient;

class MediaSessionCompatApi19$OnMetadataUpdateListener<T extends MediaSessionCompatApi19$Callback> implements RemoteControlClient.OnMetadataUpdateListener {
  protected final T mCallback;
  
  public MediaSessionCompatApi19$OnMetadataUpdateListener(T paramT) {
    this.mCallback = paramT;
  }
  
  public void onMetadataUpdate(int paramInt, Object paramObject) {
    if (paramInt == 268435457 && paramObject instanceof android.media.Rating)
      this.mCallback.onSetRating(paramObject); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi19$OnMetadataUpdateListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */