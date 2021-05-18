package android.support.v7.util;

class MessageThreadUtil$2$1 implements Runnable {
  public void run() {
    while (true) {
      MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem = MessageThreadUtil$2.this.mQueue.next();
      if (messageThreadUtil$SyncQueueItem == null) {
        MessageThreadUtil$2.this.mBackgroundRunning.set(false);
        return;
      } 
      switch (messageThreadUtil$SyncQueueItem.what) {
        case 1:
          MessageThreadUtil$2.this.mQueue.removeMessages(1);
          callback.refresh(messageThreadUtil$SyncQueueItem.arg1);
          break;
        case 2:
          MessageThreadUtil$2.this.mQueue.removeMessages(2);
          MessageThreadUtil$2.this.mQueue.removeMessages(3);
          callback.updateRange(messageThreadUtil$SyncQueueItem.arg1, messageThreadUtil$SyncQueueItem.arg2, messageThreadUtil$SyncQueueItem.arg3, messageThreadUtil$SyncQueueItem.arg4, messageThreadUtil$SyncQueueItem.arg5);
          break;
        case 3:
          callback.loadTile(messageThreadUtil$SyncQueueItem.arg1, messageThreadUtil$SyncQueueItem.arg2);
          break;
        case 4:
          callback.recycleTile((TileList$Tile)messageThreadUtil$SyncQueueItem.data);
          break;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MessageThreadUtil$2$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */