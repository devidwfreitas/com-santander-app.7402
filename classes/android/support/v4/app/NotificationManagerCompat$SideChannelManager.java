package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class NotificationManagerCompat$SideChannelManager implements ServiceConnection, Handler.Callback {
  private static final String KEY_BINDER = "binder";
  
  private static final int MSG_QUEUE_TASK = 0;
  
  private static final int MSG_RETRY_LISTENER_QUEUE = 3;
  
  private static final int MSG_SERVICE_CONNECTED = 1;
  
  private static final int MSG_SERVICE_DISCONNECTED = 2;
  
  private Set<String> mCachedEnabledPackages = new HashSet<String>();
  
  private final Context mContext;
  
  private final Handler mHandler;
  
  private final HandlerThread mHandlerThread;
  
  private final Map<ComponentName, NotificationManagerCompat$SideChannelManager$ListenerRecord> mRecordMap = new HashMap<ComponentName, NotificationManagerCompat$SideChannelManager$ListenerRecord>();
  
  public NotificationManagerCompat$SideChannelManager(Context paramContext) {
    this.mContext = paramContext;
    this.mHandlerThread = new HandlerThread("NotificationManagerCompat");
    this.mHandlerThread.start();
    this.mHandler = new Handler(this.mHandlerThread.getLooper(), this);
  }
  
  private boolean ensureServiceBound(NotificationManagerCompat$SideChannelManager$ListenerRecord paramNotificationManagerCompat$SideChannelManager$ListenerRecord) {
    if (paramNotificationManagerCompat$SideChannelManager$ListenerRecord.bound)
      return true; 
    Intent intent = (new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL")).setComponent(paramNotificationManagerCompat$SideChannelManager$ListenerRecord.componentName);
    paramNotificationManagerCompat$SideChannelManager$ListenerRecord.bound = this.mContext.bindService(intent, this, NotificationManagerCompat.SIDE_CHANNEL_BIND_FLAGS);
    if (paramNotificationManagerCompat$SideChannelManager$ListenerRecord.bound) {
      paramNotificationManagerCompat$SideChannelManager$ListenerRecord.retryCount = 0;
      return paramNotificationManagerCompat$SideChannelManager$ListenerRecord.bound;
    } 
    Log.w("NotifManCompat", "Unable to bind to listener " + paramNotificationManagerCompat$SideChannelManager$ListenerRecord.componentName);
    this.mContext.unbindService(this);
    return paramNotificationManagerCompat$SideChannelManager$ListenerRecord.bound;
  }
  
  private void ensureServiceUnbound(NotificationManagerCompat$SideChannelManager$ListenerRecord paramNotificationManagerCompat$SideChannelManager$ListenerRecord) {
    if (paramNotificationManagerCompat$SideChannelManager$ListenerRecord.bound) {
      this.mContext.unbindService(this);
      paramNotificationManagerCompat$SideChannelManager$ListenerRecord.bound = false;
    } 
    paramNotificationManagerCompat$SideChannelManager$ListenerRecord.service = null;
  }
  
  private void handleQueueTask(NotificationManagerCompat$Task paramNotificationManagerCompat$Task) {
    updateListenerMap();
    for (NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord : this.mRecordMap.values()) {
      notificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.add(paramNotificationManagerCompat$Task);
      processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord);
    } 
  }
  
  private void handleRetryListenerQueue(ComponentName paramComponentName) {
    NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(paramComponentName);
    if (notificationManagerCompat$SideChannelManager$ListenerRecord != null)
      processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord); 
  }
  
  private void handleServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(paramComponentName);
    if (notificationManagerCompat$SideChannelManager$ListenerRecord != null) {
      notificationManagerCompat$SideChannelManager$ListenerRecord.service = INotificationSideChannel$Stub.asInterface(paramIBinder);
      notificationManagerCompat$SideChannelManager$ListenerRecord.retryCount = 0;
      processListenerQueue(notificationManagerCompat$SideChannelManager$ListenerRecord);
    } 
  }
  
  private void handleServiceDisconnected(ComponentName paramComponentName) {
    NotificationManagerCompat$SideChannelManager$ListenerRecord notificationManagerCompat$SideChannelManager$ListenerRecord = this.mRecordMap.get(paramComponentName);
    if (notificationManagerCompat$SideChannelManager$ListenerRecord != null)
      ensureServiceUnbound(notificationManagerCompat$SideChannelManager$ListenerRecord); 
  }
  
  private void processListenerQueue(NotificationManagerCompat$SideChannelManager$ListenerRecord paramNotificationManagerCompat$SideChannelManager$ListenerRecord) {
    if (Log.isLoggable("NotifManCompat", 3))
      Log.d("NotifManCompat", "Processing component " + paramNotificationManagerCompat$SideChannelManager$ListenerRecord.componentName + ", " + paramNotificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.size() + " queued tasks"); 
    if (!paramNotificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.isEmpty()) {
      if (!ensureServiceBound(paramNotificationManagerCompat$SideChannelManager$ListenerRecord) || paramNotificationManagerCompat$SideChannelManager$ListenerRecord.service == null) {
        scheduleListenerRetry(paramNotificationManagerCompat$SideChannelManager$ListenerRecord);
        return;
      } 
      while (true) {
        NotificationManagerCompat$Task notificationManagerCompat$Task = paramNotificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.peek();
        if (notificationManagerCompat$Task != null)
          try {
            if (Log.isLoggable("NotifManCompat", 3))
              Log.d("NotifManCompat", "Sending task " + notificationManagerCompat$Task); 
            notificationManagerCompat$Task.send(paramNotificationManagerCompat$SideChannelManager$ListenerRecord.service);
            paramNotificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.remove();
            continue;
          } catch (DeadObjectException deadObjectException) {
            if (Log.isLoggable("NotifManCompat", 3))
              Log.d("NotifManCompat", "Remote service has died: " + paramNotificationManagerCompat$SideChannelManager$ListenerRecord.componentName); 
          } catch (RemoteException remoteException) {
            Log.w("NotifManCompat", "RemoteException communicating with " + paramNotificationManagerCompat$SideChannelManager$ListenerRecord.componentName, (Throwable)remoteException);
          }  
        if (!paramNotificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.isEmpty()) {
          scheduleListenerRetry(paramNotificationManagerCompat$SideChannelManager$ListenerRecord);
          return;
        } 
        return;
      } 
    } 
  }
  
  private void scheduleListenerRetry(NotificationManagerCompat$SideChannelManager$ListenerRecord paramNotificationManagerCompat$SideChannelManager$ListenerRecord) {
    if (this.mHandler.hasMessages(3, paramNotificationManagerCompat$SideChannelManager$ListenerRecord.componentName))
      return; 
    paramNotificationManagerCompat$SideChannelManager$ListenerRecord.retryCount++;
    if (paramNotificationManagerCompat$SideChannelManager$ListenerRecord.retryCount > 6) {
      Log.w("NotifManCompat", "Giving up on delivering " + paramNotificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.size() + " tasks to " + paramNotificationManagerCompat$SideChannelManager$ListenerRecord.componentName + " after " + paramNotificationManagerCompat$SideChannelManager$ListenerRecord.retryCount + " retries");
      paramNotificationManagerCompat$SideChannelManager$ListenerRecord.taskQueue.clear();
      return;
    } 
    int i = (1 << paramNotificationManagerCompat$SideChannelManager$ListenerRecord.retryCount - 1) * 1000;
    if (Log.isLoggable("NotifManCompat", 3))
      Log.d("NotifManCompat", "Scheduling retry for " + i + " ms"); 
    Message message = this.mHandler.obtainMessage(3, paramNotificationManagerCompat$SideChannelManager$ListenerRecord.componentName);
    this.mHandler.sendMessageDelayed(message, i);
  }
  
  private void updateListenerMap() {
    Set<String> set = NotificationManagerCompat.getEnabledListenerPackages(this.mContext);
    if (!set.equals(this.mCachedEnabledPackages)) {
      this.mCachedEnabledPackages = set;
      List list = this.mContext.getPackageManager().queryIntentServices((new Intent()).setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
      HashSet<ComponentName> hashSet = new HashSet();
      for (ResolveInfo resolveInfo : list) {
        if (set.contains(resolveInfo.serviceInfo.packageName)) {
          ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
          if (resolveInfo.serviceInfo.permission != null) {
            Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
            continue;
          } 
          hashSet.add(componentName);
        } 
      } 
      for (ComponentName componentName : hashSet) {
        if (!this.mRecordMap.containsKey(componentName)) {
          if (Log.isLoggable("NotifManCompat", 3))
            Log.d("NotifManCompat", "Adding listener record for " + componentName); 
          this.mRecordMap.put(componentName, new NotificationManagerCompat$SideChannelManager$ListenerRecord(componentName));
        } 
      } 
      Iterator<Map.Entry> iterator = this.mRecordMap.entrySet().iterator();
      while (true) {
        if (iterator.hasNext()) {
          Map.Entry entry = iterator.next();
          if (!hashSet.contains(entry.getKey())) {
            if (Log.isLoggable("NotifManCompat", 3))
              Log.d("NotifManCompat", "Removing listener record for " + entry.getKey()); 
            ensureServiceUnbound((NotificationManagerCompat$SideChannelManager$ListenerRecord)entry.getValue());
            iterator.remove();
          } 
          continue;
        } 
        return;
      } 
    } 
  }
  
  public boolean handleMessage(Message paramMessage) {
    NotificationManagerCompat$ServiceConnectedEvent notificationManagerCompat$ServiceConnectedEvent;
    switch (paramMessage.what) {
      default:
        return false;
      case 0:
        handleQueueTask((NotificationManagerCompat$Task)paramMessage.obj);
        return true;
      case 1:
        notificationManagerCompat$ServiceConnectedEvent = (NotificationManagerCompat$ServiceConnectedEvent)paramMessage.obj;
        handleServiceConnected(notificationManagerCompat$ServiceConnectedEvent.componentName, notificationManagerCompat$ServiceConnectedEvent.iBinder);
        return true;
      case 2:
        handleServiceDisconnected((ComponentName)((Message)notificationManagerCompat$ServiceConnectedEvent).obj);
        return true;
      case 3:
        break;
    } 
    handleRetryListenerQueue((ComponentName)((Message)notificationManagerCompat$ServiceConnectedEvent).obj);
    return true;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    if (Log.isLoggable("NotifManCompat", 3))
      Log.d("NotifManCompat", "Connected to service " + paramComponentName); 
    this.mHandler.obtainMessage(1, new NotificationManagerCompat$ServiceConnectedEvent(paramComponentName, paramIBinder)).sendToTarget();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {
    if (Log.isLoggable("NotifManCompat", 3))
      Log.d("NotifManCompat", "Disconnected from service " + paramComponentName); 
    this.mHandler.obtainMessage(2, paramComponentName).sendToTarget();
  }
  
  public void queueTask(NotificationManagerCompat$Task paramNotificationManagerCompat$Task) {
    this.mHandler.obtainMessage(0, paramNotificationManagerCompat$Task).sendToTarget();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\NotificationManagerCompat$SideChannelManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */