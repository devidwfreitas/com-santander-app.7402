package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

class LocalBroadcastManager$ReceiverRecord {
  boolean broadcasting;
  
  final IntentFilter filter;
  
  final BroadcastReceiver receiver;
  
  LocalBroadcastManager$ReceiverRecord(IntentFilter paramIntentFilter, BroadcastReceiver paramBroadcastReceiver) {
    this.filter = paramIntentFilter;
    this.receiver = paramBroadcastReceiver;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(128);
    stringBuilder.append("Receiver{");
    stringBuilder.append(this.receiver);
    stringBuilder.append(" filter=");
    stringBuilder.append(this.filter);
    stringBuilder.append("}");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\LocalBroadcastManager$ReceiverRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */