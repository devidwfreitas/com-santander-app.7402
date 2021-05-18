package android.support.v7.util;

import android.support.v4.content.ParallelExecutorCompat;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

class MessageThreadUtil$2 implements ThreadUtil$BackgroundCallback<T> {
  static final int LOAD_TILE = 3;
  
  static final int RECYCLE_TILE = 4;
  
  static final int REFRESH = 1;
  
  static final int UPDATE_RANGE = 2;
  
  private Runnable mBackgroundRunnable = new MessageThreadUtil$2$1(this);
  
  AtomicBoolean mBackgroundRunning = new AtomicBoolean(false);
  
  private final Executor mExecutor = ParallelExecutorCompat.getParallelExecutor();
  
  final MessageThreadUtil$MessageQueue mQueue = new MessageThreadUtil$MessageQueue();
  
  private void maybeExecuteBackgroundRunnable() {
    if (this.mBackgroundRunning.compareAndSet(false, true))
      this.mExecutor.execute(this.mBackgroundRunnable); 
  }
  
  private void sendMessage(MessageThreadUtil$SyncQueueItem paramMessageThreadUtil$SyncQueueItem) {
    this.mQueue.sendMessage(paramMessageThreadUtil$SyncQueueItem);
    maybeExecuteBackgroundRunnable();
  }
  
  private void sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem paramMessageThreadUtil$SyncQueueItem) {
    this.mQueue.sendMessageAtFrontOfQueue(paramMessageThreadUtil$SyncQueueItem);
    maybeExecuteBackgroundRunnable();
  }
  
  public void loadTile(int paramInt1, int paramInt2) {
    sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(3, paramInt1, paramInt2));
  }
  
  public void recycleTile(TileList$Tile<T> paramTileList$Tile) {
    sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(4, 0, paramTileList$Tile));
  }
  
  public void refresh(int paramInt) {
    sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem.obtainMessage(1, paramInt, (Object)null));
  }
  
  public void updateRange(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem.obtainMessage(2, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, null));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MessageThreadUtil$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */