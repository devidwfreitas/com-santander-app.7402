package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.List;

class MediaBrowserCompat$SubscriptionCallback$StubApi21 implements MediaBrowserCompatApi21$SubscriptionCallback {
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
  
  public void onChildrenLoaded(@NonNull String paramString, List<?> paramList) {
    MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription;
    if (MediaBrowserCompat$SubscriptionCallback.this.mSubscriptionRef == null) {
      mediaBrowserCompat$Subscription = null;
    } else {
      mediaBrowserCompat$Subscription = MediaBrowserCompat$SubscriptionCallback.this.mSubscriptionRef.get();
    } 
    if (mediaBrowserCompat$Subscription == null) {
      MediaBrowserCompat$SubscriptionCallback.this.onChildrenLoaded(paramString, MediaBrowserCompat$MediaItem.fromMediaItemList(paramList));
      return;
    } 
    paramList = MediaBrowserCompat$MediaItem.fromMediaItemList(paramList);
    List<MediaBrowserCompat$SubscriptionCallback> list1 = mediaBrowserCompat$Subscription.getCallbacks();
    List<Bundle> list = mediaBrowserCompat$Subscription.getOptionsList();
    int i = 0;
    while (true) {
      if (i < list1.size()) {
        Bundle bundle = list.get(i);
        if (bundle == null) {
          MediaBrowserCompat$SubscriptionCallback.this.onChildrenLoaded(paramString, (List)paramList);
        } else {
          MediaBrowserCompat$SubscriptionCallback.this.onChildrenLoaded(paramString, applyOptions((List)paramList, bundle), bundle);
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  public void onError(@NonNull String paramString) {
    MediaBrowserCompat$SubscriptionCallback.this.onError(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$SubscriptionCallback$StubApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */