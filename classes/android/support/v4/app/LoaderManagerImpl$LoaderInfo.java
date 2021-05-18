package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class LoaderManagerImpl$LoaderInfo implements Loader.OnLoadCanceledListener<Object>, Loader.OnLoadCompleteListener<Object> {
  final Bundle mArgs;
  
  LoaderManager$LoaderCallbacks<Object> mCallbacks;
  
  Object mData;
  
  boolean mDeliveredData;
  
  boolean mDestroyed;
  
  boolean mHaveData;
  
  final int mId;
  
  boolean mListenerRegistered;
  
  Loader<Object> mLoader;
  
  LoaderManagerImpl$LoaderInfo mPendingLoader;
  
  boolean mReportNextStart;
  
  boolean mRetaining;
  
  boolean mRetainingStarted;
  
  boolean mStarted;
  
  public LoaderManagerImpl$LoaderInfo(int paramInt, Bundle paramBundle, LoaderManager$LoaderCallbacks<Object> paramLoaderManager$LoaderCallbacks) {
    this.mId = paramInt;
    this.mArgs = paramBundle;
    this.mCallbacks = paramLoaderManager$LoaderCallbacks;
  }
  
  void callOnLoadFinished(Loader<Object> paramLoader, Object paramObject) {
    if (this.mCallbacks != null) {
      String str;
      if (LoaderManagerImpl.this.mHost != null) {
        str = LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause;
        LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause = "onLoadFinished";
      } else {
        str = null;
      } 
      try {
        if (LoaderManagerImpl.DEBUG)
          Log.v("LoaderManager", "  onLoadFinished in " + paramLoader + ": " + paramLoader.dataToString(paramObject)); 
        this.mCallbacks.onLoadFinished(paramLoader, paramObject);
        if (LoaderManagerImpl.this.mHost != null)
          LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause = str; 
        return;
      } finally {
        if (LoaderManagerImpl.this.mHost != null)
          LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause = str; 
      } 
    } 
  }
  
  boolean cancel() {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Canceling: " + this); 
    if (this.mStarted && this.mLoader != null && this.mListenerRegistered) {
      boolean bool = this.mLoader.cancelLoad();
      if (!bool)
        onLoadCanceled(this.mLoader); 
      return bool;
    } 
    return false;
  }
  
  void destroy() {
    // Byte code:
    //   0: getstatic android/support/v4/app/LoaderManagerImpl.DEBUG : Z
    //   3: ifeq -> 31
    //   6: ldc 'LoaderManager'
    //   8: new java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: ldc '  Destroying: '
    //   17: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: aload_0
    //   21: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   24: invokevirtual toString : ()Ljava/lang/String;
    //   27: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   30: pop
    //   31: aload_0
    //   32: iconst_1
    //   33: putfield mDestroyed : Z
    //   36: aload_0
    //   37: getfield mDeliveredData : Z
    //   40: istore_1
    //   41: aload_0
    //   42: iconst_0
    //   43: putfield mDeliveredData : Z
    //   46: aload_0
    //   47: getfield mCallbacks : Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   50: ifnull -> 178
    //   53: aload_0
    //   54: getfield mLoader : Landroid/support/v4/content/Loader;
    //   57: ifnull -> 178
    //   60: aload_0
    //   61: getfield mHaveData : Z
    //   64: ifeq -> 178
    //   67: iload_1
    //   68: ifeq -> 178
    //   71: getstatic android/support/v4/app/LoaderManagerImpl.DEBUG : Z
    //   74: ifeq -> 102
    //   77: ldc 'LoaderManager'
    //   79: new java/lang/StringBuilder
    //   82: dup
    //   83: invokespecial <init> : ()V
    //   86: ldc '  Resetting: '
    //   88: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: aload_0
    //   92: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   95: invokevirtual toString : ()Ljava/lang/String;
    //   98: invokestatic v : (Ljava/lang/String;Ljava/lang/String;)I
    //   101: pop
    //   102: aload_0
    //   103: getfield this$0 : Landroid/support/v4/app/LoaderManagerImpl;
    //   106: getfield mHost : Landroid/support/v4/app/FragmentHostCallback;
    //   109: ifnull -> 277
    //   112: aload_0
    //   113: getfield this$0 : Landroid/support/v4/app/LoaderManagerImpl;
    //   116: getfield mHost : Landroid/support/v4/app/FragmentHostCallback;
    //   119: getfield mFragmentManager : Landroid/support/v4/app/FragmentManagerImpl;
    //   122: getfield mNoTransactionsBecause : Ljava/lang/String;
    //   125: astore_2
    //   126: aload_0
    //   127: getfield this$0 : Landroid/support/v4/app/LoaderManagerImpl;
    //   130: getfield mHost : Landroid/support/v4/app/FragmentHostCallback;
    //   133: getfield mFragmentManager : Landroid/support/v4/app/FragmentManagerImpl;
    //   136: ldc 'onLoaderReset'
    //   138: putfield mNoTransactionsBecause : Ljava/lang/String;
    //   141: aload_0
    //   142: getfield mCallbacks : Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   145: aload_0
    //   146: getfield mLoader : Landroid/support/v4/content/Loader;
    //   149: invokeinterface onLoaderReset : (Landroid/support/v4/content/Loader;)V
    //   154: aload_0
    //   155: getfield this$0 : Landroid/support/v4/app/LoaderManagerImpl;
    //   158: getfield mHost : Landroid/support/v4/app/FragmentHostCallback;
    //   161: ifnull -> 178
    //   164: aload_0
    //   165: getfield this$0 : Landroid/support/v4/app/LoaderManagerImpl;
    //   168: getfield mHost : Landroid/support/v4/app/FragmentHostCallback;
    //   171: getfield mFragmentManager : Landroid/support/v4/app/FragmentManagerImpl;
    //   174: aload_2
    //   175: putfield mNoTransactionsBecause : Ljava/lang/String;
    //   178: aload_0
    //   179: aconst_null
    //   180: putfield mCallbacks : Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   183: aload_0
    //   184: aconst_null
    //   185: putfield mData : Ljava/lang/Object;
    //   188: aload_0
    //   189: iconst_0
    //   190: putfield mHaveData : Z
    //   193: aload_0
    //   194: getfield mLoader : Landroid/support/v4/content/Loader;
    //   197: ifnull -> 235
    //   200: aload_0
    //   201: getfield mListenerRegistered : Z
    //   204: ifeq -> 228
    //   207: aload_0
    //   208: iconst_0
    //   209: putfield mListenerRegistered : Z
    //   212: aload_0
    //   213: getfield mLoader : Landroid/support/v4/content/Loader;
    //   216: aload_0
    //   217: invokevirtual unregisterListener : (Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    //   220: aload_0
    //   221: getfield mLoader : Landroid/support/v4/content/Loader;
    //   224: aload_0
    //   225: invokevirtual unregisterOnLoadCanceledListener : (Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    //   228: aload_0
    //   229: getfield mLoader : Landroid/support/v4/content/Loader;
    //   232: invokevirtual reset : ()V
    //   235: aload_0
    //   236: getfield mPendingLoader : Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    //   239: ifnull -> 249
    //   242: aload_0
    //   243: getfield mPendingLoader : Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    //   246: invokevirtual destroy : ()V
    //   249: return
    //   250: astore_3
    //   251: aload_0
    //   252: getfield this$0 : Landroid/support/v4/app/LoaderManagerImpl;
    //   255: getfield mHost : Landroid/support/v4/app/FragmentHostCallback;
    //   258: ifnull -> 275
    //   261: aload_0
    //   262: getfield this$0 : Landroid/support/v4/app/LoaderManagerImpl;
    //   265: getfield mHost : Landroid/support/v4/app/FragmentHostCallback;
    //   268: getfield mFragmentManager : Landroid/support/v4/app/FragmentManagerImpl;
    //   271: aload_2
    //   272: putfield mNoTransactionsBecause : Ljava/lang/String;
    //   275: aload_3
    //   276: athrow
    //   277: aconst_null
    //   278: astore_2
    //   279: goto -> 141
    // Exception table:
    //   from	to	target	type
    //   141	154	250	finally
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.mId);
    paramPrintWriter.print(" mArgs=");
    paramPrintWriter.println(this.mArgs);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCallbacks=");
    paramPrintWriter.println(this.mCallbacks);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoader=");
    paramPrintWriter.println(this.mLoader);
    if (this.mLoader != null)
      this.mLoader.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString); 
    if (this.mHaveData || this.mDeliveredData) {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHaveData=");
      paramPrintWriter.print(this.mHaveData);
      paramPrintWriter.print("  mDeliveredData=");
      paramPrintWriter.println(this.mDeliveredData);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(this.mData);
    } 
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(this.mStarted);
    paramPrintWriter.print(" mReportNextStart=");
    paramPrintWriter.print(this.mReportNextStart);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.mDestroyed);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetaining=");
    paramPrintWriter.print(this.mRetaining);
    paramPrintWriter.print(" mRetainingStarted=");
    paramPrintWriter.print(this.mRetainingStarted);
    paramPrintWriter.print(" mListenerRegistered=");
    paramPrintWriter.println(this.mListenerRegistered);
    if (this.mPendingLoader != null) {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(this.mPendingLoader);
      paramPrintWriter.println(":");
      this.mPendingLoader.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    } 
  }
  
  void finishRetain() {
    if (this.mRetaining) {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Finished Retaining: " + this); 
      this.mRetaining = false;
      if (this.mStarted != this.mRetainingStarted && !this.mStarted)
        stop(); 
    } 
    if (this.mStarted && this.mHaveData && !this.mReportNextStart)
      callOnLoadFinished(this.mLoader, this.mData); 
  }
  
  public void onLoadCanceled(Loader<Object> paramLoader) {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "onLoadCanceled: " + this); 
    if (this.mDestroyed) {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Ignoring load canceled -- destroyed"); 
      return;
    } 
    if (LoaderManagerImpl.this.mLoaders.get(this.mId) != this) {
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  Ignoring load canceled -- not active");
        return;
      } 
      return;
    } 
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = this.mPendingLoader;
    if (loaderManagerImpl$LoaderInfo != null) {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Switching to pending loader: " + loaderManagerImpl$LoaderInfo); 
      this.mPendingLoader = null;
      LoaderManagerImpl.this.mLoaders.put(this.mId, null);
      destroy();
      LoaderManagerImpl.this.installLoader(loaderManagerImpl$LoaderInfo);
      return;
    } 
  }
  
  public void onLoadComplete(Loader<Object> paramLoader, Object paramObject) {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "onLoadComplete: " + this); 
    if (this.mDestroyed) {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed"); 
      return;
    } 
    if (LoaderManagerImpl.this.mLoaders.get(this.mId) != this) {
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  Ignoring load complete -- not active");
        return;
      } 
      return;
    } 
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo2 = this.mPendingLoader;
    if (loaderManagerImpl$LoaderInfo2 != null) {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Switching to pending loader: " + loaderManagerImpl$LoaderInfo2); 
      this.mPendingLoader = null;
      LoaderManagerImpl.this.mLoaders.put(this.mId, null);
      destroy();
      LoaderManagerImpl.this.installLoader(loaderManagerImpl$LoaderInfo2);
      return;
    } 
    if (this.mData != paramObject || !this.mHaveData) {
      this.mData = paramObject;
      this.mHaveData = true;
      if (this.mStarted)
        callOnLoadFinished(paramLoader, paramObject); 
    } 
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo1 = (LoaderManagerImpl$LoaderInfo)LoaderManagerImpl.this.mInactiveLoaders.get(this.mId);
    if (loaderManagerImpl$LoaderInfo1 != null && loaderManagerImpl$LoaderInfo1 != this) {
      loaderManagerImpl$LoaderInfo1.mDeliveredData = false;
      loaderManagerImpl$LoaderInfo1.destroy();
      LoaderManagerImpl.this.mInactiveLoaders.remove(this.mId);
    } 
    if (LoaderManagerImpl.this.mHost != null && !LoaderManagerImpl.this.hasRunningLoaders()) {
      LoaderManagerImpl.this.mHost.mFragmentManager.startPendingDeferredFragments();
      return;
    } 
  }
  
  void reportStart() {
    if (this.mStarted && this.mReportNextStart) {
      this.mReportNextStart = false;
      if (this.mHaveData && !this.mRetaining)
        callOnLoadFinished(this.mLoader, this.mData); 
    } 
  }
  
  void retain() {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Retaining: " + this); 
    this.mRetaining = true;
    this.mRetainingStarted = this.mStarted;
    this.mStarted = false;
    this.mCallbacks = null;
  }
  
  void start() {
    if (this.mRetaining && this.mRetainingStarted) {
      this.mStarted = true;
      return;
    } 
    if (!this.mStarted) {
      this.mStarted = true;
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Starting: " + this); 
      if (this.mLoader == null && this.mCallbacks != null)
        this.mLoader = this.mCallbacks.onCreateLoader(this.mId, this.mArgs); 
      if (this.mLoader != null) {
        if (this.mLoader.getClass().isMemberClass() && !Modifier.isStatic(this.mLoader.getClass().getModifiers()))
          throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.mLoader); 
        if (!this.mListenerRegistered) {
          this.mLoader.registerListener(this.mId, this);
          this.mLoader.registerOnLoadCanceledListener(this);
          this.mListenerRegistered = true;
        } 
        this.mLoader.startLoading();
        return;
      } 
    } 
  }
  
  void stop() {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Stopping: " + this); 
    this.mStarted = false;
    if (!this.mRetaining && this.mLoader != null && this.mListenerRegistered) {
      this.mListenerRegistered = false;
      this.mLoader.unregisterListener(this);
      this.mLoader.unregisterOnLoadCanceledListener(this);
      this.mLoader.stopLoading();
    } 
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(64);
    stringBuilder.append("LoaderInfo{");
    stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    stringBuilder.append(" #");
    stringBuilder.append(this.mId);
    stringBuilder.append(" : ");
    DebugUtils.buildShortClassTag(this.mLoader, stringBuilder);
    stringBuilder.append("}}");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\LoaderManagerImpl$LoaderInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */