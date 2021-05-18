package android.support.v4.media;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.BuildCompat;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.Pair;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class MediaBrowserServiceCompat extends Service {
  static final boolean DEBUG = Log.isLoggable("MBServiceCompat", 3);
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public static final String KEY_MEDIA_ITEM = "media_item";
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public static final String KEY_SEARCH_RESULTS = "search_results";
  
  static final int RESULT_ERROR = -1;
  
  static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
  
  static final int RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED = 4;
  
  static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;
  
  static final int RESULT_OK = 0;
  
  public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
  
  static final String TAG = "MBServiceCompat";
  
  final ArrayMap<IBinder, MediaBrowserServiceCompat$ConnectionRecord> mConnections = new ArrayMap();
  
  MediaBrowserServiceCompat$ConnectionRecord mCurConnection;
  
  final MediaBrowserServiceCompat$ServiceHandler mHandler = new MediaBrowserServiceCompat$ServiceHandler(this);
  
  private MediaBrowserServiceCompat$MediaBrowserServiceImpl mImpl;
  
  MediaSessionCompat.Token mSession;
  
  void addSubscription(String paramString, MediaBrowserServiceCompat$ConnectionRecord paramMediaBrowserServiceCompat$ConnectionRecord, IBinder paramIBinder, Bundle paramBundle) {
    List<Pair> list = (List)paramMediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(paramString);
    if (list == null)
      list = new ArrayList(); 
    for (Pair pair : list) {
      if (paramIBinder == pair.first && MediaBrowserCompatUtils.areSameOptions(paramBundle, (Bundle)pair.second))
        return; 
    } 
    list.add(new Pair(paramIBinder, paramBundle));
    paramMediaBrowserServiceCompat$ConnectionRecord.subscriptions.put(paramString, list);
    performLoadChildren(paramString, paramMediaBrowserServiceCompat$ConnectionRecord, paramBundle);
  }
  
  List<MediaBrowserCompat$MediaItem> applyOptions(List<MediaBrowserCompat$MediaItem> paramList, Bundle paramBundle) {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull -> 8
    //   4: aconst_null
    //   5: astore_2
    //   6: aload_2
    //   7: areturn
    //   8: aload_2
    //   9: ldc 'android.media.browse.extra.PAGE'
    //   11: iconst_m1
    //   12: invokevirtual getInt : (Ljava/lang/String;I)I
    //   15: istore_3
    //   16: aload_2
    //   17: ldc 'android.media.browse.extra.PAGE_SIZE'
    //   19: iconst_m1
    //   20: invokevirtual getInt : (Ljava/lang/String;I)I
    //   23: istore #6
    //   25: iload_3
    //   26: iconst_m1
    //   27: if_icmpne -> 38
    //   30: aload_1
    //   31: astore_2
    //   32: iload #6
    //   34: iconst_m1
    //   35: if_icmpeq -> 6
    //   38: iload #6
    //   40: iload_3
    //   41: imul
    //   42: istore #5
    //   44: iload #5
    //   46: iload #6
    //   48: iadd
    //   49: istore #4
    //   51: iload_3
    //   52: iflt -> 72
    //   55: iload #6
    //   57: iconst_1
    //   58: if_icmplt -> 72
    //   61: iload #5
    //   63: aload_1
    //   64: invokeinterface size : ()I
    //   69: if_icmplt -> 76
    //   72: getstatic java/util/Collections.EMPTY_LIST : Ljava/util/List;
    //   75: areturn
    //   76: iload #4
    //   78: istore_3
    //   79: iload #4
    //   81: aload_1
    //   82: invokeinterface size : ()I
    //   87: if_icmple -> 97
    //   90: aload_1
    //   91: invokeinterface size : ()I
    //   96: istore_3
    //   97: aload_1
    //   98: iload #5
    //   100: iload_3
    //   101: invokeinterface subList : (II)Ljava/util/List;
    //   106: areturn
  }
  
  public void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public final Bundle getBrowserRootHints() {
    return this.mImpl.getBrowserRootHints();
  }
  
  @Nullable
  public MediaSessionCompat.Token getSessionToken() {
    return this.mSession;
  }
  
  boolean isValidPackage(String paramString, int paramInt) {
    if (paramString != null) {
      String[] arrayOfString = getPackageManager().getPackagesForUid(paramInt);
      int i = arrayOfString.length;
      paramInt = 0;
      while (true) {
        if (paramInt < i) {
          if (arrayOfString[paramInt].equals(paramString))
            return true; 
          paramInt++;
          continue;
        } 
        return false;
      } 
    } 
    return false;
  }
  
  public void notifyChildrenChanged(@NonNull String paramString) {
    if (paramString == null)
      throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged"); 
    this.mImpl.notifyChildrenChanged(paramString, null);
  }
  
  public void notifyChildrenChanged(@NonNull String paramString, @NonNull Bundle paramBundle) {
    if (paramString == null)
      throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged"); 
    if (paramBundle == null)
      throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged"); 
    this.mImpl.notifyChildrenChanged(paramString, paramBundle);
  }
  
  public IBinder onBind(Intent paramIntent) {
    return this.mImpl.onBind(paramIntent);
  }
  
  public void onCreate() {
    super.onCreate();
    if (Build.VERSION.SDK_INT >= 26 || BuildCompat.isAtLeastO()) {
      this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi24(this);
    } else if (Build.VERSION.SDK_INT >= 23) {
      this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi23(this);
    } else if (Build.VERSION.SDK_INT >= 21) {
      this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi21(this);
    } else {
      this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplBase(this);
    } 
    this.mImpl.onCreate();
  }
  
  @Nullable
  public abstract MediaBrowserServiceCompat$BrowserRoot onGetRoot(@NonNull String paramString, int paramInt, @Nullable Bundle paramBundle);
  
  public abstract void onLoadChildren(@NonNull String paramString, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> paramMediaBrowserServiceCompat$Result);
  
  public void onLoadChildren(@NonNull String paramString, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> paramMediaBrowserServiceCompat$Result, @NonNull Bundle paramBundle) {
    paramMediaBrowserServiceCompat$Result.setFlags(1);
    onLoadChildren(paramString, paramMediaBrowserServiceCompat$Result);
  }
  
  public void onLoadItem(String paramString, @NonNull MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> paramMediaBrowserServiceCompat$Result) {
    paramMediaBrowserServiceCompat$Result.setFlags(2);
    paramMediaBrowserServiceCompat$Result.sendResult(null);
  }
  
  public void onSearch(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> paramMediaBrowserServiceCompat$Result) {
    paramMediaBrowserServiceCompat$Result.setFlags(4);
    paramMediaBrowserServiceCompat$Result.sendResult(null);
  }
  
  void performLoadChildren(String paramString, MediaBrowserServiceCompat$ConnectionRecord paramMediaBrowserServiceCompat$ConnectionRecord, Bundle paramBundle) {
    MediaBrowserServiceCompat$1 mediaBrowserServiceCompat$1 = new MediaBrowserServiceCompat$1(this, paramString, paramMediaBrowserServiceCompat$ConnectionRecord, paramString, paramBundle);
    this.mCurConnection = paramMediaBrowserServiceCompat$ConnectionRecord;
    if (paramBundle == null) {
      onLoadChildren(paramString, mediaBrowserServiceCompat$1);
    } else {
      onLoadChildren(paramString, mediaBrowserServiceCompat$1, paramBundle);
    } 
    this.mCurConnection = null;
    if (!mediaBrowserServiceCompat$1.isDone())
      throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + paramMediaBrowserServiceCompat$ConnectionRecord.pkg + " id=" + paramString); 
  }
  
  void performLoadItem(String paramString, MediaBrowserServiceCompat$ConnectionRecord paramMediaBrowserServiceCompat$ConnectionRecord, ResultReceiver paramResultReceiver) {
    MediaBrowserServiceCompat$2 mediaBrowserServiceCompat$2 = new MediaBrowserServiceCompat$2(this, paramString, paramResultReceiver);
    this.mCurConnection = paramMediaBrowserServiceCompat$ConnectionRecord;
    onLoadItem(paramString, mediaBrowserServiceCompat$2);
    this.mCurConnection = null;
    if (!mediaBrowserServiceCompat$2.isDone())
      throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + paramString); 
  }
  
  void performSearch(String paramString, Bundle paramBundle, MediaBrowserServiceCompat$ConnectionRecord paramMediaBrowserServiceCompat$ConnectionRecord, ResultReceiver paramResultReceiver) {
    MediaBrowserServiceCompat$3 mediaBrowserServiceCompat$3 = new MediaBrowserServiceCompat$3(this, paramString, paramResultReceiver);
    this.mCurConnection = paramMediaBrowserServiceCompat$ConnectionRecord;
    onSearch(paramString, paramBundle, mediaBrowserServiceCompat$3);
    this.mCurConnection = null;
    if (!mediaBrowserServiceCompat$3.isDone())
      throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + paramString); 
  }
  
  boolean removeSubscription(String paramString, MediaBrowserServiceCompat$ConnectionRecord paramMediaBrowserServiceCompat$ConnectionRecord, IBinder paramIBinder) {
    if (paramIBinder == null)
      return (paramMediaBrowserServiceCompat$ConnectionRecord.subscriptions.remove(paramString) != null); 
    List list = paramMediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(paramString);
    if (list != null) {
      Iterator iterator = list.iterator();
      boolean bool1 = false;
      while (iterator.hasNext()) {
        if (paramIBinder == ((Pair)iterator.next()).first) {
          iterator.remove();
          bool1 = true;
        } 
      } 
      boolean bool2 = bool1;
      if (list.size() == 0) {
        paramMediaBrowserServiceCompat$ConnectionRecord.subscriptions.remove(paramString);
        bool2 = bool1;
      } 
      return bool2;
    } 
    return false;
  }
  
  public void setSessionToken(MediaSessionCompat.Token paramToken) {
    if (paramToken == null)
      throw new IllegalArgumentException("Session token may not be null."); 
    if (this.mSession != null)
      throw new IllegalStateException("The session token has already been set."); 
    this.mSession = paramToken;
    this.mImpl.setSessionToken(paramToken);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */