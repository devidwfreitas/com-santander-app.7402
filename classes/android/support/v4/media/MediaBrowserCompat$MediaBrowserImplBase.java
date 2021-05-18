package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class MediaBrowserCompat$MediaBrowserImplBase implements MediaBrowserCompat$MediaBrowserImpl, MediaBrowserCompat$MediaBrowserServiceCallbackImpl {
  private static final int CONNECT_STATE_CONNECTED = 2;
  
  static final int CONNECT_STATE_CONNECTING = 1;
  
  static final int CONNECT_STATE_DISCONNECTED = 0;
  
  static final int CONNECT_STATE_SUSPENDED = 3;
  
  final MediaBrowserCompat$ConnectionCallback mCallback;
  
  Messenger mCallbacksMessenger;
  
  final Context mContext;
  
  private Bundle mExtras;
  
  final MediaBrowserCompat$CallbackHandler mHandler;
  
  private MediaSessionCompat.Token mMediaSessionToken;
  
  final Bundle mRootHints;
  
  private String mRootId;
  
  MediaBrowserCompat$ServiceBinderWrapper mServiceBinderWrapper;
  
  final ComponentName mServiceComponent;
  
  MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection mServiceConnection;
  
  int mState;
  
  private final ArrayMap<String, MediaBrowserCompat$Subscription> mSubscriptions;
  
  public MediaBrowserCompat$MediaBrowserImplBase(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat$ConnectionCallback paramMediaBrowserCompat$ConnectionCallback, Bundle paramBundle) {
    Bundle bundle;
    this.mHandler = new MediaBrowserCompat$CallbackHandler(this);
    this.mSubscriptions = new ArrayMap();
    this.mState = 0;
    if (paramContext == null)
      throw new IllegalArgumentException("context must not be null"); 
    if (paramComponentName == null)
      throw new IllegalArgumentException("service component must not be null"); 
    if (paramMediaBrowserCompat$ConnectionCallback == null)
      throw new IllegalArgumentException("connection callback must not be null"); 
    this.mContext = paramContext;
    this.mServiceComponent = paramComponentName;
    this.mCallback = paramMediaBrowserCompat$ConnectionCallback;
    if (paramBundle == null) {
      paramContext = null;
    } else {
      bundle = new Bundle(paramBundle);
    } 
    this.mRootHints = bundle;
  }
  
  private static String getStateLabel(int paramInt) {
    switch (paramInt) {
      default:
        return "UNKNOWN/" + paramInt;
      case 0:
        return "CONNECT_STATE_DISCONNECTED";
      case 1:
        return "CONNECT_STATE_CONNECTING";
      case 2:
        return "CONNECT_STATE_CONNECTED";
      case 3:
        break;
    } 
    return "CONNECT_STATE_SUSPENDED";
  }
  
  private boolean isCurrent(Messenger paramMessenger, String paramString) {
    if (this.mCallbacksMessenger != paramMessenger) {
      if (this.mState != 0)
        Log.i("MediaBrowserCompat", paramString + " for " + this.mServiceComponent + " with mCallbacksMessenger=" + this.mCallbacksMessenger + " this=" + this); 
      return false;
    } 
    return true;
  }
  
  public void connect() {
    if (this.mState != 0)
      throw new IllegalStateException("connect() called while not disconnected (state=" + getStateLabel(this.mState) + ")"); 
    if (MediaBrowserCompat.DEBUG && this.mServiceConnection != null)
      throw new RuntimeException("mServiceConnection should be null. Instead it is " + this.mServiceConnection); 
    if (this.mServiceBinderWrapper != null)
      throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + this.mServiceBinderWrapper); 
    if (this.mCallbacksMessenger != null)
      throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + this.mCallbacksMessenger); 
    this.mState = 1;
    Intent intent = new Intent("android.media.browse.MediaBrowserService");
    intent.setComponent(this.mServiceComponent);
    MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection mediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection = new MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection(this);
    this.mServiceConnection = mediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    boolean bool = false;
    try {
      boolean bool1 = this.mContext.bindService(intent, this.mServiceConnection, 1);
      bool = bool1;
    } catch (Exception exception) {
      Log.e("MediaBrowserCompat", "Failed binding to service " + this.mServiceComponent);
    } 
    if (!bool)
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$1(this, mediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection)); 
    if (MediaBrowserCompat.DEBUG) {
      Log.d("MediaBrowserCompat", "connect...");
      dump();
    } 
  }
  
  public void disconnect() {
    if (this.mCallbacksMessenger != null)
      try {
        this.mServiceBinderWrapper.disconnect(this.mCallbacksMessenger);
      } catch (RemoteException remoteException) {
        Log.w("MediaBrowserCompat", "RemoteException during connect for " + this.mServiceComponent);
      }  
    forceCloseConnection();
    if (MediaBrowserCompat.DEBUG) {
      Log.d("MediaBrowserCompat", "disconnect...");
      dump();
    } 
  }
  
  void dump() {
    Log.d("MediaBrowserCompat", "MediaBrowserCompat...");
    Log.d("MediaBrowserCompat", "  mServiceComponent=" + this.mServiceComponent);
    Log.d("MediaBrowserCompat", "  mCallback=" + this.mCallback);
    Log.d("MediaBrowserCompat", "  mRootHints=" + this.mRootHints);
    Log.d("MediaBrowserCompat", "  mState=" + getStateLabel(this.mState));
    Log.d("MediaBrowserCompat", "  mServiceConnection=" + this.mServiceConnection);
    Log.d("MediaBrowserCompat", "  mServiceBinderWrapper=" + this.mServiceBinderWrapper);
    Log.d("MediaBrowserCompat", "  mCallbacksMessenger=" + this.mCallbacksMessenger);
    Log.d("MediaBrowserCompat", "  mRootId=" + this.mRootId);
    Log.d("MediaBrowserCompat", "  mMediaSessionToken=" + this.mMediaSessionToken);
  }
  
  void forceCloseConnection() {
    if (this.mServiceConnection != null)
      this.mContext.unbindService(this.mServiceConnection); 
    this.mState = 0;
    this.mServiceConnection = null;
    this.mServiceBinderWrapper = null;
    this.mCallbacksMessenger = null;
    this.mHandler.setCallbacksMessenger((Messenger)null);
    this.mRootId = null;
    this.mMediaSessionToken = null;
  }
  
  @Nullable
  public Bundle getExtras() {
    if (!isConnected())
      throw new IllegalStateException("getExtras() called while not connected (state=" + getStateLabel(this.mState) + ")"); 
    return this.mExtras;
  }
  
  public void getItem(@NonNull String paramString, @NonNull MediaBrowserCompat$ItemCallback paramMediaBrowserCompat$ItemCallback) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("mediaId is empty"); 
    if (paramMediaBrowserCompat$ItemCallback == null)
      throw new IllegalArgumentException("cb is null"); 
    if (this.mState != 2) {
      Log.i("MediaBrowserCompat", "Not connected, unable to retrieve the MediaItem.");
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$2(this, paramMediaBrowserCompat$ItemCallback, paramString));
      return;
    } 
    MediaBrowserCompat$ItemReceiver mediaBrowserCompat$ItemReceiver = new MediaBrowserCompat$ItemReceiver(paramString, paramMediaBrowserCompat$ItemCallback, this.mHandler);
    try {
      this.mServiceBinderWrapper.getMediaItem(paramString, mediaBrowserCompat$ItemReceiver, this.mCallbacksMessenger);
      return;
    } catch (RemoteException remoteException) {
      Log.i("MediaBrowserCompat", "Remote error getting media item.");
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$3(this, paramMediaBrowserCompat$ItemCallback, paramString));
      return;
    } 
  }
  
  @NonNull
  public String getRoot() {
    if (!isConnected())
      throw new IllegalStateException("getRoot() called while not connected(state=" + getStateLabel(this.mState) + ")"); 
    return this.mRootId;
  }
  
  @NonNull
  public ComponentName getServiceComponent() {
    if (!isConnected())
      throw new IllegalStateException("getServiceComponent() called while not connected (state=" + this.mState + ")"); 
    return this.mServiceComponent;
  }
  
  @NonNull
  public MediaSessionCompat.Token getSessionToken() {
    if (!isConnected())
      throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.mState + ")"); 
    return this.mMediaSessionToken;
  }
  
  public boolean isConnected() {
    return (this.mState == 2);
  }
  
  public void onConnectionFailed(Messenger paramMessenger) {
    Log.e("MediaBrowserCompat", "onConnectFailed for " + this.mServiceComponent);
    if (!isCurrent(paramMessenger, "onConnectFailed"))
      return; 
    if (this.mState != 1) {
      Log.w("MediaBrowserCompat", "onConnect from service while mState=" + getStateLabel(this.mState) + "... ignoring");
      return;
    } 
    forceCloseConnection();
    this.mCallback.onConnectionFailed();
  }
  
  public void onLoadChildren(Messenger paramMessenger, String paramString, List<MediaBrowserCompat$MediaItem> paramList, Bundle paramBundle) {
    if (isCurrent(paramMessenger, "onLoadChildren")) {
      if (MediaBrowserCompat.DEBUG)
        Log.d("MediaBrowserCompat", "onLoadChildren for " + this.mServiceComponent + " id=" + paramString); 
      MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription = (MediaBrowserCompat$Subscription)this.mSubscriptions.get(paramString);
      if (mediaBrowserCompat$Subscription == null) {
        if (MediaBrowserCompat.DEBUG) {
          Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + paramString);
          return;
        } 
        return;
      } 
      MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback = mediaBrowserCompat$Subscription.getCallback(paramBundle);
      if (mediaBrowserCompat$SubscriptionCallback != null) {
        if (paramBundle == null) {
          if (paramList == null) {
            mediaBrowserCompat$SubscriptionCallback.onError(paramString);
            return;
          } 
          mediaBrowserCompat$SubscriptionCallback.onChildrenLoaded(paramString, paramList);
          return;
        } 
        if (paramList == null) {
          mediaBrowserCompat$SubscriptionCallback.onError(paramString, paramBundle);
          return;
        } 
        mediaBrowserCompat$SubscriptionCallback.onChildrenLoaded(paramString, paramList, paramBundle);
        return;
      } 
    } 
  }
  
  public void onServiceConnected(Messenger paramMessenger, String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle) {
    if (isCurrent(paramMessenger, "onConnect")) {
      if (this.mState != 1) {
        Log.w("MediaBrowserCompat", "onConnect from service while mState=" + getStateLabel(this.mState) + "... ignoring");
        return;
      } 
      this.mRootId = paramString;
      this.mMediaSessionToken = paramToken;
      this.mExtras = paramBundle;
      this.mState = 2;
      if (MediaBrowserCompat.DEBUG) {
        Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
        dump();
      } 
      this.mCallback.onConnected();
      try {
        Iterator<Map.Entry> iterator = this.mSubscriptions.entrySet().iterator();
        while (true) {
          if (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            paramString = (String)entry.getKey();
            MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription = (MediaBrowserCompat$Subscription)entry.getValue();
            List<MediaBrowserCompat$SubscriptionCallback> list = mediaBrowserCompat$Subscription.getCallbacks();
            List<Bundle> list1 = mediaBrowserCompat$Subscription.getOptionsList();
            int i;
            for (i = 0; i < list.size(); i++)
              this.mServiceBinderWrapper.addSubscription(paramString, MediaBrowserCompat$SubscriptionCallback.access$000(list.get(i)), list1.get(i), this.mCallbacksMessenger); 
            continue;
          } 
          return;
        } 
      } catch (RemoteException remoteException) {
        Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException.");
        return;
      } 
    } 
  }
  
  public void search(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat$SearchCallback paramMediaBrowserCompat$SearchCallback) {
    if (!isConnected()) {
      Log.i("MediaBrowserCompat", "Not connected, unable to search.");
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$4(this, paramMediaBrowserCompat$SearchCallback, paramString, paramBundle));
      return;
    } 
    MediaBrowserCompat$SearchResultReceiver mediaBrowserCompat$SearchResultReceiver = new MediaBrowserCompat$SearchResultReceiver(paramString, paramBundle, paramMediaBrowserCompat$SearchCallback, this.mHandler);
    try {
      this.mServiceBinderWrapper.search(paramString, paramBundle, mediaBrowserCompat$SearchResultReceiver, this.mCallbacksMessenger);
      return;
    } catch (RemoteException remoteException) {
      Log.i("MediaBrowserCompat", "Remote error searching items with query: " + paramString, (Throwable)remoteException);
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$5(this, paramMediaBrowserCompat$SearchCallback, paramString, paramBundle));
      return;
    } 
  }
  
  public void subscribe(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription = (MediaBrowserCompat$Subscription)this.mSubscriptions.get(paramString);
    if (mediaBrowserCompat$Subscription == null) {
      mediaBrowserCompat$Subscription = new MediaBrowserCompat$Subscription();
      this.mSubscriptions.put(paramString, mediaBrowserCompat$Subscription);
    } 
    if (paramBundle == null) {
      paramBundle = null;
    } else {
      paramBundle = new Bundle(paramBundle);
    } 
    mediaBrowserCompat$Subscription.putCallback(paramBundle, paramMediaBrowserCompat$SubscriptionCallback);
    if (this.mState == 2)
      try {
        this.mServiceBinderWrapper.addSubscription(paramString, MediaBrowserCompat$SubscriptionCallback.access$000(paramMediaBrowserCompat$SubscriptionCallback), paramBundle, this.mCallbacksMessenger);
        return;
      } catch (RemoteException remoteException) {
        Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException parentId=" + paramString);
        return;
      }  
  }
  
  public void unsubscribe(@NonNull String paramString, MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mSubscriptions : Landroid/support/v4/util/ArrayMap;
    //   4: aload_1
    //   5: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   8: checkcast android/support/v4/media/MediaBrowserCompat$Subscription
    //   11: astore #4
    //   13: aload #4
    //   15: ifnonnull -> 19
    //   18: return
    //   19: aload_2
    //   20: ifnonnull -> 66
    //   23: aload_0
    //   24: getfield mState : I
    //   27: iconst_2
    //   28: if_icmpne -> 44
    //   31: aload_0
    //   32: getfield mServiceBinderWrapper : Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    //   35: aload_1
    //   36: aconst_null
    //   37: aload_0
    //   38: getfield mCallbacksMessenger : Landroid/os/Messenger;
    //   41: invokevirtual removeSubscription : (Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    //   44: aload #4
    //   46: invokevirtual isEmpty : ()Z
    //   49: ifne -> 56
    //   52: aload_2
    //   53: ifnonnull -> 18
    //   56: aload_0
    //   57: getfield mSubscriptions : Landroid/support/v4/util/ArrayMap;
    //   60: aload_1
    //   61: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   64: pop
    //   65: return
    //   66: aload #4
    //   68: invokevirtual getCallbacks : ()Ljava/util/List;
    //   71: astore #5
    //   73: aload #4
    //   75: invokevirtual getOptionsList : ()Ljava/util/List;
    //   78: astore #6
    //   80: aload #5
    //   82: invokeinterface size : ()I
    //   87: iconst_1
    //   88: isub
    //   89: istore_3
    //   90: iload_3
    //   91: iflt -> 44
    //   94: aload #5
    //   96: iload_3
    //   97: invokeinterface get : (I)Ljava/lang/Object;
    //   102: aload_2
    //   103: if_acmpne -> 148
    //   106: aload_0
    //   107: getfield mState : I
    //   110: iconst_2
    //   111: if_icmpne -> 130
    //   114: aload_0
    //   115: getfield mServiceBinderWrapper : Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    //   118: aload_1
    //   119: aload_2
    //   120: invokestatic access$000 : (Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;
    //   123: aload_0
    //   124: getfield mCallbacksMessenger : Landroid/os/Messenger;
    //   127: invokevirtual removeSubscription : (Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    //   130: aload #5
    //   132: iload_3
    //   133: invokeinterface remove : (I)Ljava/lang/Object;
    //   138: pop
    //   139: aload #6
    //   141: iload_3
    //   142: invokeinterface remove : (I)Ljava/lang/Object;
    //   147: pop
    //   148: iload_3
    //   149: iconst_1
    //   150: isub
    //   151: istore_3
    //   152: goto -> 90
    //   155: astore #5
    //   157: ldc 'MediaBrowserCompat'
    //   159: new java/lang/StringBuilder
    //   162: dup
    //   163: invokespecial <init> : ()V
    //   166: ldc_w 'removeSubscription failed with RemoteException parentId='
    //   169: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: aload_1
    //   173: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual toString : ()Ljava/lang/String;
    //   179: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   182: pop
    //   183: goto -> 44
    // Exception table:
    //   from	to	target	type
    //   23	44	155	android/os/RemoteException
    //   66	90	155	android/os/RemoteException
    //   94	130	155	android/os/RemoteException
    //   130	148	155	android/os/RemoteException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */