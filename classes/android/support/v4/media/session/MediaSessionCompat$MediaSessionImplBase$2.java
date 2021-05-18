package android.support.v4.media.session;

import android.support.v4.media.RatingCompat;

class MediaSessionCompat$MediaSessionImplBase$2 implements MediaSessionCompatApi19$Callback {
  public void onSeekTo(long paramLong) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(18, Long.valueOf(paramLong));
  }
  
  public void onSetRating(Object paramObject) {
    MediaSessionCompat$MediaSessionImplBase.this.postToHandler(19, RatingCompat.fromRating(paramObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$MediaSessionImplBase$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */