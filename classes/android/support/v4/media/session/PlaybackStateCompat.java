package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class PlaybackStateCompat implements Parcelable {
  public static final long ACTION_FAST_FORWARD = 64L;
  
  public static final long ACTION_PAUSE = 2L;
  
  public static final long ACTION_PLAY = 4L;
  
  public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024L;
  
  public static final long ACTION_PLAY_FROM_SEARCH = 2048L;
  
  public static final long ACTION_PLAY_FROM_URI = 8192L;
  
  public static final long ACTION_PLAY_PAUSE = 512L;
  
  public static final long ACTION_PREPARE = 16384L;
  
  public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768L;
  
  public static final long ACTION_PREPARE_FROM_SEARCH = 65536L;
  
  public static final long ACTION_PREPARE_FROM_URI = 131072L;
  
  public static final long ACTION_REWIND = 8L;
  
  public static final long ACTION_SEEK_TO = 256L;
  
  public static final long ACTION_SET_RATING = 128L;
  
  public static final long ACTION_SET_REPEAT_MODE = 262144L;
  
  public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288L;
  
  public static final long ACTION_SKIP_TO_NEXT = 32L;
  
  public static final long ACTION_SKIP_TO_PREVIOUS = 16L;
  
  public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096L;
  
  public static final long ACTION_STOP = 1L;
  
  public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new PlaybackStateCompat$1();
  
  public static final int ERROR_CODE_ACTION_ABORTED = 10;
  
  public static final int ERROR_CODE_APP_ERROR = 1;
  
  public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
  
  public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
  
  public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
  
  public static final int ERROR_CODE_END_OF_QUEUE = 11;
  
  public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
  
  public static final int ERROR_CODE_NOT_SUPPORTED = 2;
  
  public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
  
  public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
  
  public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
  
  public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
  
  private static final int KEYCODE_MEDIA_PAUSE = 127;
  
  private static final int KEYCODE_MEDIA_PLAY = 126;
  
  public static final long PLAYBACK_POSITION_UNKNOWN = -1L;
  
  public static final int REPEAT_MODE_ALL = 2;
  
  public static final int REPEAT_MODE_NONE = 0;
  
  public static final int REPEAT_MODE_ONE = 1;
  
  public static final int STATE_BUFFERING = 6;
  
  public static final int STATE_CONNECTING = 8;
  
  public static final int STATE_ERROR = 7;
  
  public static final int STATE_FAST_FORWARDING = 4;
  
  public static final int STATE_NONE = 0;
  
  public static final int STATE_PAUSED = 2;
  
  public static final int STATE_PLAYING = 3;
  
  public static final int STATE_REWINDING = 5;
  
  public static final int STATE_SKIPPING_TO_NEXT = 10;
  
  public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
  
  public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
  
  public static final int STATE_STOPPED = 1;
  
  final long mActions;
  
  final long mActiveItemId;
  
  final long mBufferedPosition;
  
  List<PlaybackStateCompat$CustomAction> mCustomActions;
  
  final int mErrorCode;
  
  final CharSequence mErrorMessage;
  
  final Bundle mExtras;
  
  final long mPosition;
  
  final float mSpeed;
  
  final int mState;
  
  private Object mStateObj;
  
  final long mUpdateTime;
  
  PlaybackStateCompat(int paramInt1, long paramLong1, long paramLong2, float paramFloat, long paramLong3, int paramInt2, CharSequence paramCharSequence, long paramLong4, List<PlaybackStateCompat$CustomAction> paramList, long paramLong5, Bundle paramBundle) {
    this.mState = paramInt1;
    this.mPosition = paramLong1;
    this.mBufferedPosition = paramLong2;
    this.mSpeed = paramFloat;
    this.mActions = paramLong3;
    this.mErrorCode = paramInt2;
    this.mErrorMessage = paramCharSequence;
    this.mUpdateTime = paramLong4;
    this.mCustomActions = new ArrayList<PlaybackStateCompat$CustomAction>(paramList);
    this.mActiveItemId = paramLong5;
    this.mExtras = paramBundle;
  }
  
  PlaybackStateCompat(Parcel paramParcel) {
    this.mState = paramParcel.readInt();
    this.mPosition = paramParcel.readLong();
    this.mSpeed = paramParcel.readFloat();
    this.mUpdateTime = paramParcel.readLong();
    this.mBufferedPosition = paramParcel.readLong();
    this.mActions = paramParcel.readLong();
    this.mErrorMessage = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel);
    this.mCustomActions = paramParcel.createTypedArrayList(PlaybackStateCompat$CustomAction.CREATOR);
    this.mActiveItemId = paramParcel.readLong();
    this.mExtras = paramParcel.readBundle();
    this.mErrorCode = paramParcel.readInt();
  }
  
  public static PlaybackStateCompat fromPlaybackState(Object paramObject) {
    if (paramObject == null || Build.VERSION.SDK_INT < 21)
      return null; 
    List<Object> list = PlaybackStateCompatApi21.getCustomActions(paramObject);
    ArrayList<PlaybackStateCompat$CustomAction> arrayList = null;
    if (list != null) {
      ArrayList<PlaybackStateCompat$CustomAction> arrayList1 = new ArrayList(list.size());
      Iterator iterator = list.iterator();
      while (true) {
        arrayList = arrayList1;
        if (iterator.hasNext()) {
          arrayList1.add(PlaybackStateCompat$CustomAction.fromCustomAction(iterator.next()));
          continue;
        } 
        break;
      } 
    } 
    if (Build.VERSION.SDK_INT >= 22) {
      Bundle bundle1 = PlaybackStateCompatApi22.getExtras(paramObject);
      playbackStateCompat = new PlaybackStateCompat(PlaybackStateCompatApi21.getState(paramObject), PlaybackStateCompatApi21.getPosition(paramObject), PlaybackStateCompatApi21.getBufferedPosition(paramObject), PlaybackStateCompatApi21.getPlaybackSpeed(paramObject), PlaybackStateCompatApi21.getActions(paramObject), 0, PlaybackStateCompatApi21.getErrorMessage(paramObject), PlaybackStateCompatApi21.getLastPositionUpdateTime(paramObject), arrayList, PlaybackStateCompatApi21.getActiveQueueItemId(paramObject), bundle1);
      playbackStateCompat.mStateObj = paramObject;
      return playbackStateCompat;
    } 
    Bundle bundle = null;
    PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(PlaybackStateCompatApi21.getState(paramObject), PlaybackStateCompatApi21.getPosition(paramObject), PlaybackStateCompatApi21.getBufferedPosition(paramObject), PlaybackStateCompatApi21.getPlaybackSpeed(paramObject), PlaybackStateCompatApi21.getActions(paramObject), 0, PlaybackStateCompatApi21.getErrorMessage(paramObject), PlaybackStateCompatApi21.getLastPositionUpdateTime(paramObject), (List<PlaybackStateCompat$CustomAction>)playbackStateCompat, PlaybackStateCompatApi21.getActiveQueueItemId(paramObject), bundle);
    playbackStateCompat.mStateObj = paramObject;
    return playbackStateCompat;
  }
  
  public static int toKeyCode(long paramLong) {
    return (paramLong == 4L) ? 126 : ((paramLong == 2L) ? 127 : ((paramLong == 32L) ? 87 : ((paramLong == 16L) ? 88 : ((paramLong == 1L) ? 86 : ((paramLong == 64L) ? 90 : ((paramLong == 8L) ? 89 : ((paramLong == 512L) ? 85 : 0)))))));
  }
  
  public int describeContents() {
    return 0;
  }
  
  public long getActions() {
    return this.mActions;
  }
  
  public long getActiveQueueItemId() {
    return this.mActiveItemId;
  }
  
  public long getBufferedPosition() {
    return this.mBufferedPosition;
  }
  
  public List<PlaybackStateCompat$CustomAction> getCustomActions() {
    return this.mCustomActions;
  }
  
  public int getErrorCode() {
    return this.mErrorCode;
  }
  
  public CharSequence getErrorMessage() {
    return this.mErrorMessage;
  }
  
  @Nullable
  public Bundle getExtras() {
    return this.mExtras;
  }
  
  public long getLastPositionUpdateTime() {
    return this.mUpdateTime;
  }
  
  public float getPlaybackSpeed() {
    return this.mSpeed;
  }
  
  public Object getPlaybackState() {
    if (this.mStateObj != null || Build.VERSION.SDK_INT < 21)
      return this.mStateObj; 
    ArrayList<Object> arrayList = null;
    if (this.mCustomActions != null) {
      ArrayList<Object> arrayList1 = new ArrayList(this.mCustomActions.size());
      Iterator<PlaybackStateCompat$CustomAction> iterator = this.mCustomActions.iterator();
      while (true) {
        arrayList = arrayList1;
        if (iterator.hasNext()) {
          arrayList1.add(((PlaybackStateCompat$CustomAction)iterator.next()).getCustomAction());
          continue;
        } 
        break;
      } 
    } 
    if (Build.VERSION.SDK_INT >= 22) {
      this.mStateObj = PlaybackStateCompatApi22.newInstance(this.mState, this.mPosition, this.mBufferedPosition, this.mSpeed, this.mActions, this.mErrorMessage, this.mUpdateTime, arrayList, this.mActiveItemId, this.mExtras);
      return this.mStateObj;
    } 
    this.mStateObj = PlaybackStateCompatApi21.newInstance(this.mState, this.mPosition, this.mBufferedPosition, this.mSpeed, this.mActions, this.mErrorMessage, this.mUpdateTime, arrayList, this.mActiveItemId);
    return this.mStateObj;
  }
  
  public long getPosition() {
    return this.mPosition;
  }
  
  public int getState() {
    return this.mState;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder("PlaybackState {");
    stringBuilder.append("state=").append(this.mState);
    stringBuilder.append(", position=").append(this.mPosition);
    stringBuilder.append(", buffered position=").append(this.mBufferedPosition);
    stringBuilder.append(", speed=").append(this.mSpeed);
    stringBuilder.append(", updated=").append(this.mUpdateTime);
    stringBuilder.append(", actions=").append(this.mActions);
    stringBuilder.append(", error code=").append(this.mErrorCode);
    stringBuilder.append(", error message=").append(this.mErrorMessage);
    stringBuilder.append(", custom actions=").append(this.mCustomActions);
    stringBuilder.append(", active item id=").append(this.mActiveItemId);
    stringBuilder.append("}");
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.mState);
    paramParcel.writeLong(this.mPosition);
    paramParcel.writeFloat(this.mSpeed);
    paramParcel.writeLong(this.mUpdateTime);
    paramParcel.writeLong(this.mBufferedPosition);
    paramParcel.writeLong(this.mActions);
    TextUtils.writeToParcel(this.mErrorMessage, paramParcel, paramInt);
    paramParcel.writeTypedList(this.mCustomActions);
    paramParcel.writeLong(this.mActiveItemId);
    paramParcel.writeBundle(this.mExtras);
    paramParcel.writeInt(this.mErrorCode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\PlaybackStateCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */