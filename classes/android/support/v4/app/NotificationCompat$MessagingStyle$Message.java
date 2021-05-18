package android.support.v4.app;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public final class NotificationCompat$MessagingStyle$Message {
  static final String KEY_DATA_MIME_TYPE = "type";
  
  static final String KEY_DATA_URI = "uri";
  
  static final String KEY_SENDER = "sender";
  
  static final String KEY_TEXT = "text";
  
  static final String KEY_TIMESTAMP = "time";
  
  private String mDataMimeType;
  
  private Uri mDataUri;
  
  private final CharSequence mSender;
  
  private final CharSequence mText;
  
  private final long mTimestamp;
  
  public NotificationCompat$MessagingStyle$Message(CharSequence paramCharSequence1, long paramLong, CharSequence paramCharSequence2) {
    this.mText = paramCharSequence1;
    this.mTimestamp = paramLong;
    this.mSender = paramCharSequence2;
  }
  
  static Bundle[] getBundleArrayForMessages(List<NotificationCompat$MessagingStyle$Message> paramList) {
    Bundle[] arrayOfBundle = new Bundle[paramList.size()];
    int j = paramList.size();
    for (int i = 0; i < j; i++)
      arrayOfBundle[i] = ((NotificationCompat$MessagingStyle$Message)paramList.get(i)).toBundle(); 
    return arrayOfBundle;
  }
  
  static NotificationCompat$MessagingStyle$Message getMessageFromBundle(Bundle paramBundle) {
    try {
      if (!paramBundle.containsKey("text") || !paramBundle.containsKey("time"))
        return null; 
      NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message = new NotificationCompat$MessagingStyle$Message(paramBundle.getCharSequence("text"), paramBundle.getLong("time"), paramBundle.getCharSequence("sender"));
      if (paramBundle.containsKey("type") && paramBundle.containsKey("uri"))
        notificationCompat$MessagingStyle$Message.setData(paramBundle.getString("type"), (Uri)paramBundle.getParcelable("uri")); 
      return notificationCompat$MessagingStyle$Message;
    } catch (ClassCastException classCastException) {
      return null;
    } 
  }
  
  static List<NotificationCompat$MessagingStyle$Message> getMessagesFromBundleArray(Parcelable[] paramArrayOfParcelable) {
    ArrayList<NotificationCompat$MessagingStyle$Message> arrayList = new ArrayList(paramArrayOfParcelable.length);
    for (int i = 0; i < paramArrayOfParcelable.length; i++) {
      if (paramArrayOfParcelable[i] instanceof Bundle) {
        NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message = getMessageFromBundle((Bundle)paramArrayOfParcelable[i]);
        if (notificationCompat$MessagingStyle$Message != null)
          arrayList.add(notificationCompat$MessagingStyle$Message); 
      } 
    } 
    return arrayList;
  }
  
  private Bundle toBundle() {
    Bundle bundle = new Bundle();
    if (this.mText != null)
      bundle.putCharSequence("text", this.mText); 
    bundle.putLong("time", this.mTimestamp);
    if (this.mSender != null)
      bundle.putCharSequence("sender", this.mSender); 
    if (this.mDataMimeType != null)
      bundle.putString("type", this.mDataMimeType); 
    if (this.mDataUri != null)
      bundle.putParcelable("uri", (Parcelable)this.mDataUri); 
    return bundle;
  }
  
  public String getDataMimeType() {
    return this.mDataMimeType;
  }
  
  public Uri getDataUri() {
    return this.mDataUri;
  }
  
  public CharSequence getSender() {
    return this.mSender;
  }
  
  public CharSequence getText() {
    return this.mText;
  }
  
  public long getTimestamp() {
    return this.mTimestamp;
  }
  
  public NotificationCompat$MessagingStyle$Message setData(String paramString, Uri paramUri) {
    this.mDataMimeType = paramString;
    this.mDataUri = paramUri;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationCompat$MessagingStyle$Message.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */