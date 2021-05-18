package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.media.RemoteControlClient;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(19)
@RequiresApi(19)
class MediaSessionCompatApi19 {
  private static final long ACTION_SET_RATING = 128L;
  
  private static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
  
  private static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
  
  private static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
  
  static void addNewMetadata(Bundle paramBundle, RemoteControlClient.MetadataEditor paramMetadataEditor) {
    if (paramBundle != null) {
      if (paramBundle.containsKey("android.media.metadata.YEAR"))
        paramMetadataEditor.putLong(8, paramBundle.getLong("android.media.metadata.YEAR")); 
      if (paramBundle.containsKey("android.media.metadata.RATING"))
        paramMetadataEditor.putObject(101, paramBundle.getParcelable("android.media.metadata.RATING")); 
      if (paramBundle.containsKey("android.media.metadata.USER_RATING")) {
        paramMetadataEditor.putObject(268435457, paramBundle.getParcelable("android.media.metadata.USER_RATING"));
        return;
      } 
    } 
  }
  
  public static Object createMetadataUpdateListener(MediaSessionCompatApi19$Callback paramMediaSessionCompatApi19$Callback) {
    return new MediaSessionCompatApi19$OnMetadataUpdateListener<MediaSessionCompatApi19$Callback>(paramMediaSessionCompatApi19$Callback);
  }
  
  static int getRccTransportControlFlagsFromActions(long paramLong) {
    int j = MediaSessionCompatApi18.getRccTransportControlFlagsFromActions(paramLong);
    int i = j;
    if ((0x80L & paramLong) != 0L)
      i = j | 0x200; 
    return i;
  }
  
  public static void setMetadata(Object paramObject, Bundle paramBundle, long paramLong) {
    paramObject = ((RemoteControlClient)paramObject).editMetadata(true);
    MediaSessionCompatApi14.buildOldMetadata(paramBundle, (RemoteControlClient.MetadataEditor)paramObject);
    addNewMetadata(paramBundle, (RemoteControlClient.MetadataEditor)paramObject);
    if ((0x80L & paramLong) != 0L)
      paramObject.addEditableKey(268435457); 
    paramObject.apply();
  }
  
  public static void setOnMetadataUpdateListener(Object paramObject1, Object paramObject2) {
    ((RemoteControlClient)paramObject1).setMetadataUpdateListener((RemoteControlClient.OnMetadataUpdateListener)paramObject2);
  }
  
  public static void setTransportControlFlags(Object paramObject, long paramLong) {
    ((RemoteControlClient)paramObject).setTransportControlFlags(getRccTransportControlFlagsFromActions(paramLong));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi19.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */