package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.util.List;

class MediaBrowserCompat$MediaBrowserImplApi21 implements MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal, MediaBrowserCompat$MediaBrowserImpl, MediaBrowserCompat$MediaBrowserServiceCallbackImpl {
  protected final Object mBrowserObj;
  
  protected Messenger mCallbacksMessenger;
  
  protected final MediaBrowserCompat$CallbackHandler mHandler = new MediaBrowserCompat$CallbackHandler(this);
  
  protected final Bundle mRootHints;
  
  protected MediaBrowserCompat$ServiceBinderWrapper mServiceBinderWrapper;
  
  private final ArrayMap<String, MediaBrowserCompat$Subscription> mSubscriptions = new ArrayMap();
  
  public MediaBrowserCompat$MediaBrowserImplApi21(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat$ConnectionCallback paramMediaBrowserCompat$ConnectionCallback, Bundle paramBundle) {
    if (Build.VERSION.SDK_INT <= 25) {
      Bundle bundle = paramBundle;
      if (paramBundle == null)
        bundle = new Bundle(); 
      bundle.putInt("extra_client_version", 1);
      this.mRootHints = new Bundle(bundle);
    } else {
      if (paramBundle == null) {
        paramBundle = null;
      } else {
        paramBundle = new Bundle(paramBundle);
      } 
      this.mRootHints = paramBundle;
    } 
    paramMediaBrowserCompat$ConnectionCallback.setInternalConnectionCallback(this);
    this.mBrowserObj = MediaBrowserCompatApi21.createBrowser(paramContext, paramComponentName, paramMediaBrowserCompat$ConnectionCallback.mConnectionCallbackObj, this.mRootHints);
  }
  
  public void connect() {
    MediaBrowserCompatApi21.connect(this.mBrowserObj);
  }
  
  public void disconnect() {
    if (this.mServiceBinderWrapper != null && this.mCallbacksMessenger != null)
      try {
        this.mServiceBinderWrapper.unregisterCallbackMessenger(this.mCallbacksMessenger);
      } catch (RemoteException remoteException) {
        Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
      }  
    MediaBrowserCompatApi21.disconnect(this.mBrowserObj);
  }
  
  @Nullable
  public Bundle getExtras() {
    return MediaBrowserCompatApi21.getExtras(this.mBrowserObj);
  }
  
  public void getItem(@NonNull String paramString, @NonNull MediaBrowserCompat$ItemCallback paramMediaBrowserCompat$ItemCallback) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("mediaId is empty"); 
    if (paramMediaBrowserCompat$ItemCallback == null)
      throw new IllegalArgumentException("cb is null"); 
    if (!MediaBrowserCompatApi21.isConnected(this.mBrowserObj)) {
      Log.i("MediaBrowserCompat", "Not connected, unable to retrieve the MediaItem.");
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$1(this, paramMediaBrowserCompat$ItemCallback, paramString));
      return;
    } 
    if (this.mServiceBinderWrapper == null) {
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$2(this, paramMediaBrowserCompat$ItemCallback, paramString));
      return;
    } 
    MediaBrowserCompat$ItemReceiver mediaBrowserCompat$ItemReceiver = new MediaBrowserCompat$ItemReceiver(paramString, paramMediaBrowserCompat$ItemCallback, this.mHandler);
    try {
      this.mServiceBinderWrapper.getMediaItem(paramString, mediaBrowserCompat$ItemReceiver, this.mCallbacksMessenger);
      return;
    } catch (RemoteException remoteException) {
      Log.i("MediaBrowserCompat", "Remote error getting media item: " + paramString);
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$3(this, paramMediaBrowserCompat$ItemCallback, paramString));
      return;
    } 
  }
  
  @NonNull
  public String getRoot() {
    return MediaBrowserCompatApi21.getRoot(this.mBrowserObj);
  }
  
  public ComponentName getServiceComponent() {
    return MediaBrowserCompatApi21.getServiceComponent(this.mBrowserObj);
  }
  
  @NonNull
  public MediaSessionCompat.Token getSessionToken() {
    return MediaSessionCompat.Token.fromToken(MediaBrowserCompatApi21.getSessionToken(this.mBrowserObj));
  }
  
  public boolean isConnected() {
    return MediaBrowserCompatApi21.isConnected(this.mBrowserObj);
  }
  
  public void onConnected() {
    Bundle bundle = MediaBrowserCompatApi21.getExtras(this.mBrowserObj);
    if (bundle != null) {
      IBinder iBinder = BundleCompat.getBinder(bundle, "extra_messenger");
      if (iBinder != null) {
        this.mServiceBinderWrapper = new MediaBrowserCompat$ServiceBinderWrapper(iBinder, this.mRootHints);
        this.mCallbacksMessenger = new Messenger(this.mHandler);
        this.mHandler.setCallbacksMessenger(this.mCallbacksMessenger);
        try {
          this.mServiceBinderWrapper.registerCallbackMessenger(this.mCallbacksMessenger);
          return;
        } catch (RemoteException remoteException) {
          Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
          return;
        } 
      } 
    } 
  }
  
  public void onConnectionFailed() {}
  
  public void onConnectionFailed(Messenger paramMessenger) {}
  
  public void onConnectionSuspended() {
    this.mServiceBinderWrapper = null;
    this.mCallbacksMessenger = null;
    this.mHandler.setCallbacksMessenger((Messenger)null);
  }
  
  public void onLoadChildren(Messenger paramMessenger, String paramString, List<MediaBrowserCompat$MediaItem> paramList, Bundle paramBundle) {
    if (this.mCallbacksMessenger == paramMessenger) {
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
  
  public void onServiceConnected(Messenger paramMessenger, String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle) {}
  
  public void search(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat$SearchCallback paramMediaBrowserCompat$SearchCallback) {
    if (!isConnected()) {
      Log.i("MediaBrowserCompat", "Not connected, unable to search.");
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$4(this, paramMediaBrowserCompat$SearchCallback, paramString, paramBundle));
      return;
    } 
    if (this.mServiceBinderWrapper == null) {
      Log.i("MediaBrowserCompat", "The connected service doesn't support search.");
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$5(this, paramMediaBrowserCompat$SearchCallback, paramString, paramBundle));
      return;
    } 
    MediaBrowserCompat$SearchResultReceiver mediaBrowserCompat$SearchResultReceiver = new MediaBrowserCompat$SearchResultReceiver(paramString, paramBundle, paramMediaBrowserCompat$SearchCallback, this.mHandler);
    try {
      this.mServiceBinderWrapper.search(paramString, paramBundle, mediaBrowserCompat$SearchResultReceiver, this.mCallbacksMessenger);
      return;
    } catch (RemoteException remoteException) {
      Log.i("MediaBrowserCompat", "Remote error searching items with query: " + paramString, (Throwable)remoteException);
      this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$6(this, paramMediaBrowserCompat$SearchCallback, paramString, paramBundle));
      return;
    } 
  }
  
  public void subscribe(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat$SubscriptionCallback paramMediaBrowserCompat$SubscriptionCallback) {
    MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription2 = (MediaBrowserCompat$Subscription)this.mSubscriptions.get(paramString);
    MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription1 = mediaBrowserCompat$Subscription2;
    if (mediaBrowserCompat$Subscription2 == null) {
      mediaBrowserCompat$Subscription1 = new MediaBrowserCompat$Subscription();
      this.mSubscriptions.put(paramString, mediaBrowserCompat$Subscription1);
    } 
    MediaBrowserCompat$SubscriptionCallback.access$100(paramMediaBrowserCompat$SubscriptionCallback, mediaBrowserCompat$Subscription1);
    if (paramBundle == null) {
      paramBundle = null;
    } else {
      paramBundle = new Bundle(paramBundle);
    } 
    mediaBrowserCompat$Subscription1.putCallback(paramBundle, paramMediaBrowserCompat$SubscriptionCallback);
    if (this.mServiceBinderWrapper == null) {
      MediaBrowserCompatApi21.subscribe(this.mBrowserObj, paramString, MediaBrowserCompat$SubscriptionCallback.access$200(paramMediaBrowserCompat$SubscriptionCallback));
      return;
    } 
    try {
      this.mServiceBinderWrapper.addSubscription(paramString, MediaBrowserCompat$SubscriptionCallback.access$000(paramMediaBrowserCompat$SubscriptionCallback), paramBundle, this.mCallbacksMessenger);
      return;
    } catch (RemoteException remoteException) {
      Log.i("MediaBrowserCompat", "Remote error subscribing media item: " + paramString);
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
    //   19: aload_0
    //   20: getfield mServiceBinderWrapper : Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    //   23: ifnonnull -> 146
    //   26: aload_2
    //   27: ifnonnull -> 60
    //   30: aload_0
    //   31: getfield mBrowserObj : Ljava/lang/Object;
    //   34: aload_1
    //   35: invokestatic unsubscribe : (Ljava/lang/Object;Ljava/lang/String;)V
    //   38: aload #4
    //   40: invokevirtual isEmpty : ()Z
    //   43: ifne -> 50
    //   46: aload_2
    //   47: ifnonnull -> 18
    //   50: aload_0
    //   51: getfield mSubscriptions : Landroid/support/v4/util/ArrayMap;
    //   54: aload_1
    //   55: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   58: pop
    //   59: return
    //   60: aload #4
    //   62: invokevirtual getCallbacks : ()Ljava/util/List;
    //   65: astore #5
    //   67: aload #4
    //   69: invokevirtual getOptionsList : ()Ljava/util/List;
    //   72: astore #6
    //   74: aload #5
    //   76: invokeinterface size : ()I
    //   81: iconst_1
    //   82: isub
    //   83: istore_3
    //   84: iload_3
    //   85: iflt -> 125
    //   88: aload #5
    //   90: iload_3
    //   91: invokeinterface get : (I)Ljava/lang/Object;
    //   96: aload_2
    //   97: if_acmpne -> 118
    //   100: aload #5
    //   102: iload_3
    //   103: invokeinterface remove : (I)Ljava/lang/Object;
    //   108: pop
    //   109: aload #6
    //   111: iload_3
    //   112: invokeinterface remove : (I)Ljava/lang/Object;
    //   117: pop
    //   118: iload_3
    //   119: iconst_1
    //   120: isub
    //   121: istore_3
    //   122: goto -> 84
    //   125: aload #5
    //   127: invokeinterface size : ()I
    //   132: ifne -> 38
    //   135: aload_0
    //   136: getfield mBrowserObj : Ljava/lang/Object;
    //   139: aload_1
    //   140: invokestatic unsubscribe : (Ljava/lang/Object;Ljava/lang/String;)V
    //   143: goto -> 38
    //   146: aload_2
    //   147: ifnonnull -> 197
    //   150: aload_0
    //   151: getfield mServiceBinderWrapper : Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    //   154: aload_1
    //   155: aconst_null
    //   156: aload_0
    //   157: getfield mCallbacksMessenger : Landroid/os/Messenger;
    //   160: invokevirtual removeSubscription : (Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    //   163: goto -> 38
    //   166: astore #5
    //   168: ldc 'MediaBrowserCompat'
    //   170: new java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial <init> : ()V
    //   177: ldc_w 'removeSubscription failed with RemoteException parentId='
    //   180: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload_1
    //   184: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual toString : ()Ljava/lang/String;
    //   190: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   193: pop
    //   194: goto -> 38
    //   197: aload #4
    //   199: invokevirtual getCallbacks : ()Ljava/util/List;
    //   202: astore #5
    //   204: aload #4
    //   206: invokevirtual getOptionsList : ()Ljava/util/List;
    //   209: astore #6
    //   211: aload #5
    //   213: invokeinterface size : ()I
    //   218: iconst_1
    //   219: isub
    //   220: istore_3
    //   221: iload_3
    //   222: iflt -> 38
    //   225: aload #5
    //   227: iload_3
    //   228: invokeinterface get : (I)Ljava/lang/Object;
    //   233: aload_2
    //   234: if_acmpne -> 271
    //   237: aload_0
    //   238: getfield mServiceBinderWrapper : Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    //   241: aload_1
    //   242: aload_2
    //   243: invokestatic access$000 : (Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;
    //   246: aload_0
    //   247: getfield mCallbacksMessenger : Landroid/os/Messenger;
    //   250: invokevirtual removeSubscription : (Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    //   253: aload #5
    //   255: iload_3
    //   256: invokeinterface remove : (I)Ljava/lang/Object;
    //   261: pop
    //   262: aload #6
    //   264: iload_3
    //   265: invokeinterface remove : (I)Ljava/lang/Object;
    //   270: pop
    //   271: iload_3
    //   272: iconst_1
    //   273: isub
    //   274: istore_3
    //   275: goto -> 221
    // Exception table:
    //   from	to	target	type
    //   150	163	166	android/os/RemoteException
    //   197	221	166	android/os/RemoteException
    //   225	271	166	android/os/RemoteException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaBrowserImplApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */