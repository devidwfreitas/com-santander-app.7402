package android.support.v7.util;

import android.os.Handler;
import android.os.Looper;

class MessageThreadUtil$1 implements ThreadUtil$MainThreadCallback<T> {
  static final int ADD_TILE = 2;
  
  static final int REMOVE_TILE = 3;
  
  static final int UPDATE_ITEM_COUNT = 1;
  
  private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
  
  private Runnable mMainThreadRunnable = new MessageThreadUtil$1$1(this);
  
  final MessageThreadUtil$MessageQueue mQueue = new MessageThreadUtil$MessageQueue();
  
  private void sendMessage(MessageThreadUtil$SyncQueueItem paramMessageThreadUtil$SyncQueueItem) {
    this.mQueue.sendMessage(paramMessageThreadUtil$SyncQueueItem);
    this.mMainThreadHandler.post(this.mMainThreadRunnable);
  }
  
  public void addTile(int paramInt, TileList$Tile<T> paramTileList$Tile) {
    sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(2, paramInt, paramTileList$Tile));
  }
  
  public void removeTile(int paramInt1, int paramInt2) {
    sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(3, paramInt1, paramInt2));
  }
  
  public void updateItemCount(int paramInt1, int paramInt2) {
    sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(1, paramInt1, paramInt2));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MessageThreadUtil$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */