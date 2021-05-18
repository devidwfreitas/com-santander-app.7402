package android.support.v7.util;

class MessageThreadUtil$1$1 implements Runnable {
  public void run() {
    MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem = MessageThreadUtil$1.this.mQueue.next();
    while (messageThreadUtil$SyncQueueItem != null) {
      switch (messageThreadUtil$SyncQueueItem.what) {
        case 1:
          callback.updateItemCount(messageThreadUtil$SyncQueueItem.arg1, messageThreadUtil$SyncQueueItem.arg2);
          messageThreadUtil$SyncQueueItem = MessageThreadUtil$1.this.mQueue.next();
          break;
        case 2:
          callback.addTile(messageThreadUtil$SyncQueueItem.arg1, (TileList$Tile)messageThreadUtil$SyncQueueItem.data);
          messageThreadUtil$SyncQueueItem = MessageThreadUtil$1.this.mQueue.next();
          break;
        case 3:
          callback.removeTile(messageThreadUtil$SyncQueueItem.arg1, messageThreadUtil$SyncQueueItem.arg2);
          messageThreadUtil$SyncQueueItem = MessageThreadUtil$1.this.mQueue.next();
          break;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MessageThreadUtil$1$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */