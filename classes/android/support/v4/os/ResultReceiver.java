package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ResultReceiver implements Parcelable {
  public static final Parcelable.Creator<ResultReceiver> CREATOR = new ResultReceiver$1();
  
  final Handler mHandler;
  
  final boolean mLocal = true;
  
  IResultReceiver mReceiver;
  
  public ResultReceiver(Handler paramHandler) {
    this.mHandler = paramHandler;
  }
  
  ResultReceiver(Parcel paramParcel) {
    this.mHandler = null;
    this.mReceiver = IResultReceiver$Stub.asInterface(paramParcel.readStrongBinder());
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void onReceiveResult(int paramInt, Bundle paramBundle) {}
  
  public void send(int paramInt, Bundle paramBundle) {
    if (this.mLocal) {
      if (this.mHandler != null) {
        this.mHandler.post(new ResultReceiver$MyRunnable(this, paramInt, paramBundle));
        return;
      } 
      onReceiveResult(paramInt, paramBundle);
      return;
    } 
    if (this.mReceiver != null)
      try {
        this.mReceiver.send(paramInt, paramBundle);
        return;
      } catch (RemoteException remoteException) {
        return;
      }  
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mReceiver : Landroid/support/v4/os/IResultReceiver;
    //   6: ifnonnull -> 21
    //   9: aload_0
    //   10: new android/support/v4/os/ResultReceiver$MyResultReceiver
    //   13: dup
    //   14: aload_0
    //   15: invokespecial <init> : (Landroid/support/v4/os/ResultReceiver;)V
    //   18: putfield mReceiver : Landroid/support/v4/os/IResultReceiver;
    //   21: aload_1
    //   22: aload_0
    //   23: getfield mReceiver : Landroid/support/v4/os/IResultReceiver;
    //   26: invokeinterface asBinder : ()Landroid/os/IBinder;
    //   31: invokevirtual writeStrongBinder : (Landroid/os/IBinder;)V
    //   34: aload_0
    //   35: monitorexit
    //   36: return
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Exception table:
    //   from	to	target	type
    //   2	21	37	finally
    //   21	36	37	finally
    //   38	40	37	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\os\ResultReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */