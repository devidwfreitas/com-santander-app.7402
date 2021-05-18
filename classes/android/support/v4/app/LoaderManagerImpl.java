package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class LoaderManagerImpl extends LoaderManager {
  static boolean DEBUG = false;
  
  static final String TAG = "LoaderManager";
  
  boolean mCreatingLoader;
  
  FragmentHostCallback mHost;
  
  final SparseArrayCompat<LoaderManagerImpl$LoaderInfo> mInactiveLoaders = new SparseArrayCompat();
  
  final SparseArrayCompat<LoaderManagerImpl$LoaderInfo> mLoaders = new SparseArrayCompat();
  
  boolean mRetaining;
  
  boolean mRetainingStarted;
  
  boolean mStarted;
  
  final String mWho;
  
  LoaderManagerImpl(String paramString, FragmentHostCallback paramFragmentHostCallback, boolean paramBoolean) {
    this.mWho = paramString;
    this.mHost = paramFragmentHostCallback;
    this.mStarted = paramBoolean;
  }
  
  private LoaderManagerImpl$LoaderInfo createAndInstallLoader(int paramInt, Bundle paramBundle, LoaderManager$LoaderCallbacks<Object> paramLoaderManager$LoaderCallbacks) {
    try {
      this.mCreatingLoader = true;
      LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = createLoader(paramInt, paramBundle, paramLoaderManager$LoaderCallbacks);
      installLoader(loaderManagerImpl$LoaderInfo);
      return loaderManagerImpl$LoaderInfo;
    } finally {
      this.mCreatingLoader = false;
    } 
  }
  
  private LoaderManagerImpl$LoaderInfo createLoader(int paramInt, Bundle paramBundle, LoaderManager$LoaderCallbacks<Object> paramLoaderManager$LoaderCallbacks) {
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = new LoaderManagerImpl$LoaderInfo(this, paramInt, paramBundle, paramLoaderManager$LoaderCallbacks);
    loaderManagerImpl$LoaderInfo.mLoader = paramLoaderManager$LoaderCallbacks.onCreateLoader(paramInt, paramBundle);
    return loaderManagerImpl$LoaderInfo;
  }
  
  public void destroyLoader(int paramInt) {
    if (this.mCreatingLoader)
      throw new IllegalStateException("Called while creating a loader"); 
    if (DEBUG)
      Log.v("LoaderManager", "destroyLoader in " + this + " of " + paramInt); 
    int i = this.mLoaders.indexOfKey(paramInt);
    if (i >= 0) {
      LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = (LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i);
      this.mLoaders.removeAt(i);
      loaderManagerImpl$LoaderInfo.destroy();
    } 
    paramInt = this.mInactiveLoaders.indexOfKey(paramInt);
    if (paramInt >= 0) {
      LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = (LoaderManagerImpl$LoaderInfo)this.mInactiveLoaders.valueAt(paramInt);
      this.mInactiveLoaders.removeAt(paramInt);
      loaderManagerImpl$LoaderInfo.destroy();
    } 
    if (this.mHost != null && !hasRunningLoaders())
      this.mHost.mFragmentManager.startPendingDeferredFragments(); 
  }
  
  void doDestroy() {
    if (!this.mRetaining) {
      if (DEBUG)
        Log.v("LoaderManager", "Destroying Active in " + this); 
      for (int j = this.mLoaders.size() - 1; j >= 0; j--)
        ((LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(j)).destroy(); 
      this.mLoaders.clear();
    } 
    if (DEBUG)
      Log.v("LoaderManager", "Destroying Inactive in " + this); 
    for (int i = this.mInactiveLoaders.size() - 1; i >= 0; i--)
      ((LoaderManagerImpl$LoaderInfo)this.mInactiveLoaders.valueAt(i)).destroy(); 
    this.mInactiveLoaders.clear();
    this.mHost = null;
  }
  
  void doReportNextStart() {
    for (int i = this.mLoaders.size() - 1; i >= 0; i--)
      ((LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i)).mReportNextStart = true; 
  }
  
  void doReportStart() {
    for (int i = this.mLoaders.size() - 1; i >= 0; i--)
      ((LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i)).reportStart(); 
  }
  
  void doRetain() {
    if (DEBUG)
      Log.v("LoaderManager", "Retaining in " + this); 
    if (!this.mStarted) {
      RuntimeException runtimeException = new RuntimeException("here");
      runtimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
      return;
    } 
    this.mRetaining = true;
    this.mStarted = false;
    int i = this.mLoaders.size() - 1;
    while (true) {
      if (i >= 0) {
        ((LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i)).retain();
        i--;
        continue;
      } 
      return;
    } 
  }
  
  void doStart() {
    if (DEBUG)
      Log.v("LoaderManager", "Starting in " + this); 
    if (this.mStarted) {
      RuntimeException runtimeException = new RuntimeException("here");
      runtimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
      return;
    } 
    this.mStarted = true;
    int i = this.mLoaders.size() - 1;
    while (true) {
      if (i >= 0) {
        ((LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i)).start();
        i--;
        continue;
      } 
      return;
    } 
  }
  
  void doStop() {
    if (DEBUG)
      Log.v("LoaderManager", "Stopping in " + this); 
    if (!this.mStarted) {
      RuntimeException runtimeException = new RuntimeException("here");
      runtimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
      return;
    } 
    for (int i = this.mLoaders.size() - 1; i >= 0; i--)
      ((LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i)).stop(); 
    this.mStarted = false;
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    byte b = 0;
    if (this.mLoaders.size() > 0) {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      String str = paramString + "    ";
      int i;
      for (i = 0; i < this.mLoaders.size(); i++) {
        LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = (LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.mLoaders.keyAt(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(loaderManagerImpl$LoaderInfo.toString());
        loaderManagerImpl$LoaderInfo.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      } 
    } 
    if (this.mInactiveLoaders.size() > 0) {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      String str = paramString + "    ";
      int i;
      for (i = b; i < this.mInactiveLoaders.size(); i++) {
        LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = (LoaderManagerImpl$LoaderInfo)this.mInactiveLoaders.valueAt(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.mInactiveLoaders.keyAt(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(loaderManagerImpl$LoaderInfo.toString());
        loaderManagerImpl$LoaderInfo.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      } 
    } 
  }
  
  void finishRetain() {
    if (this.mRetaining) {
      if (DEBUG)
        Log.v("LoaderManager", "Finished Retaining in " + this); 
      this.mRetaining = false;
      for (int i = this.mLoaders.size() - 1; i >= 0; i--)
        ((LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i)).finishRetain(); 
    } 
  }
  
  public <D> Loader<D> getLoader(int paramInt) {
    if (this.mCreatingLoader)
      throw new IllegalStateException("Called while creating a loader"); 
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = (LoaderManagerImpl$LoaderInfo)this.mLoaders.get(paramInt);
    return (loaderManagerImpl$LoaderInfo != null) ? ((loaderManagerImpl$LoaderInfo.mPendingLoader != null) ? loaderManagerImpl$LoaderInfo.mPendingLoader.mLoader : loaderManagerImpl$LoaderInfo.mLoader) : null;
  }
  
  public boolean hasRunningLoaders() {
    int j = this.mLoaders.size();
    int i = 0;
    int k = 0;
    while (i < j) {
      byte b;
      LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = (LoaderManagerImpl$LoaderInfo)this.mLoaders.valueAt(i);
      if (loaderManagerImpl$LoaderInfo.mStarted && !loaderManagerImpl$LoaderInfo.mDeliveredData) {
        b = 1;
      } else {
        b = 0;
      } 
      k |= b;
      i++;
    } 
    return k;
  }
  
  public <D> Loader<D> initLoader(int paramInt, Bundle paramBundle, LoaderManager$LoaderCallbacks<D> paramLoaderManager$LoaderCallbacks) {
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo1;
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo2;
    if (this.mCreatingLoader)
      throw new IllegalStateException("Called while creating a loader"); 
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo3 = (LoaderManagerImpl$LoaderInfo)this.mLoaders.get(paramInt);
    if (DEBUG)
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + paramBundle); 
    if (loaderManagerImpl$LoaderInfo3 == null) {
      loaderManagerImpl$LoaderInfo2 = createAndInstallLoader(paramInt, paramBundle, (LoaderManager$LoaderCallbacks)paramLoaderManager$LoaderCallbacks);
      loaderManagerImpl$LoaderInfo1 = loaderManagerImpl$LoaderInfo2;
      if (DEBUG) {
        Log.v("LoaderManager", "  Created new loader " + loaderManagerImpl$LoaderInfo2);
        loaderManagerImpl$LoaderInfo1 = loaderManagerImpl$LoaderInfo2;
      } 
    } else {
      if (DEBUG)
        Log.v("LoaderManager", "  Re-using existing loader " + loaderManagerImpl$LoaderInfo3); 
      loaderManagerImpl$LoaderInfo3.mCallbacks = (LoaderManager$LoaderCallbacks)loaderManagerImpl$LoaderInfo2;
      loaderManagerImpl$LoaderInfo1 = loaderManagerImpl$LoaderInfo3;
    } 
    if (loaderManagerImpl$LoaderInfo1.mHaveData && this.mStarted)
      loaderManagerImpl$LoaderInfo1.callOnLoadFinished(loaderManagerImpl$LoaderInfo1.mLoader, loaderManagerImpl$LoaderInfo1.mData); 
    return loaderManagerImpl$LoaderInfo1.mLoader;
  }
  
  void installLoader(LoaderManagerImpl$LoaderInfo paramLoaderManagerImpl$LoaderInfo) {
    this.mLoaders.put(paramLoaderManagerImpl$LoaderInfo.mId, paramLoaderManagerImpl$LoaderInfo);
    if (this.mStarted)
      paramLoaderManagerImpl$LoaderInfo.start(); 
  }
  
  public <D> Loader<D> restartLoader(int paramInt, Bundle paramBundle, LoaderManager$LoaderCallbacks<D> paramLoaderManager$LoaderCallbacks) {
    if (this.mCreatingLoader)
      throw new IllegalStateException("Called while creating a loader"); 
    LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = (LoaderManagerImpl$LoaderInfo)this.mLoaders.get(paramInt);
    if (DEBUG)
      Log.v("LoaderManager", "restartLoader in " + this + ": args=" + paramBundle); 
    if (loaderManagerImpl$LoaderInfo != null) {
      LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo1 = (LoaderManagerImpl$LoaderInfo)this.mInactiveLoaders.get(paramInt);
      if (loaderManagerImpl$LoaderInfo1 != null) {
        if (loaderManagerImpl$LoaderInfo.mHaveData) {
          if (DEBUG)
            Log.v("LoaderManager", "  Removing last inactive loader: " + loaderManagerImpl$LoaderInfo); 
          loaderManagerImpl$LoaderInfo1.mDeliveredData = false;
          loaderManagerImpl$LoaderInfo1.destroy();
          loaderManagerImpl$LoaderInfo.mLoader.abandon();
          this.mInactiveLoaders.put(paramInt, loaderManagerImpl$LoaderInfo);
          return (createAndInstallLoader(paramInt, paramBundle, (LoaderManager$LoaderCallbacks)paramLoaderManager$LoaderCallbacks)).mLoader;
        } 
        if (!loaderManagerImpl$LoaderInfo.cancel()) {
          if (DEBUG)
            Log.v("LoaderManager", "  Current loader is stopped; replacing"); 
          this.mLoaders.put(paramInt, null);
          loaderManagerImpl$LoaderInfo.destroy();
          return (createAndInstallLoader(paramInt, paramBundle, (LoaderManager$LoaderCallbacks)paramLoaderManager$LoaderCallbacks)).mLoader;
        } 
        if (DEBUG)
          Log.v("LoaderManager", "  Current loader is running; configuring pending loader"); 
        if (loaderManagerImpl$LoaderInfo.mPendingLoader != null) {
          if (DEBUG)
            Log.v("LoaderManager", "  Removing pending loader: " + loaderManagerImpl$LoaderInfo.mPendingLoader); 
          loaderManagerImpl$LoaderInfo.mPendingLoader.destroy();
          loaderManagerImpl$LoaderInfo.mPendingLoader = null;
        } 
        if (DEBUG)
          Log.v("LoaderManager", "  Enqueuing as new pending loader"); 
        loaderManagerImpl$LoaderInfo.mPendingLoader = createLoader(paramInt, paramBundle, (LoaderManager$LoaderCallbacks)paramLoaderManager$LoaderCallbacks);
        return loaderManagerImpl$LoaderInfo.mPendingLoader.mLoader;
      } 
    } else {
      return (createAndInstallLoader(paramInt, paramBundle, (LoaderManager$LoaderCallbacks)paramLoaderManager$LoaderCallbacks)).mLoader;
    } 
    if (DEBUG)
      Log.v("LoaderManager", "  Making last loader inactive: " + loaderManagerImpl$LoaderInfo); 
    loaderManagerImpl$LoaderInfo.mLoader.abandon();
    this.mInactiveLoaders.put(paramInt, loaderManagerImpl$LoaderInfo);
    return (createAndInstallLoader(paramInt, paramBundle, (LoaderManager$LoaderCallbacks)paramLoaderManager$LoaderCallbacks)).mLoader;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder(128);
    stringBuilder.append("LoaderManager{");
    stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    stringBuilder.append(" in ");
    DebugUtils.buildShortClassTag(this.mHost, stringBuilder);
    stringBuilder.append("}}");
    return stringBuilder.toString();
  }
  
  void updateHostController(FragmentHostCallback paramFragmentHostCallback) {
    this.mHost = paramFragmentHostCallback;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\LoaderManagerImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */