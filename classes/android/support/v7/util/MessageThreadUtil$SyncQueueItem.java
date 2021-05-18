package android.support.v7.util;

class MessageThreadUtil$SyncQueueItem {
  private static MessageThreadUtil$SyncQueueItem sPool;
  
  private static final Object sPoolLock = new Object();
  
  public int arg1;
  
  public int arg2;
  
  public int arg3;
  
  public int arg4;
  
  public int arg5;
  
  public Object data;
  
  private MessageThreadUtil$SyncQueueItem next;
  
  public int what;
  
  static MessageThreadUtil$SyncQueueItem obtainMessage(int paramInt1, int paramInt2, int paramInt3) {
    return obtainMessage(paramInt1, paramInt2, paramInt3, 0, 0, 0, null);
  }
  
  static MessageThreadUtil$SyncQueueItem obtainMessage(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Object paramObject) {
    synchronized (sPoolLock) {
      if (sPool == null) {
        MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem1 = new MessageThreadUtil$SyncQueueItem();
        messageThreadUtil$SyncQueueItem1.what = paramInt1;
        messageThreadUtil$SyncQueueItem1.arg1 = paramInt2;
        messageThreadUtil$SyncQueueItem1.arg2 = paramInt3;
        messageThreadUtil$SyncQueueItem1.arg3 = paramInt4;
        messageThreadUtil$SyncQueueItem1.arg4 = paramInt5;
        messageThreadUtil$SyncQueueItem1.arg5 = paramInt6;
        messageThreadUtil$SyncQueueItem1.data = paramObject;
        return messageThreadUtil$SyncQueueItem1;
      } 
      MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem = sPool;
      sPool = sPool.next;
      messageThreadUtil$SyncQueueItem.next = null;
      messageThreadUtil$SyncQueueItem.what = paramInt1;
      messageThreadUtil$SyncQueueItem.arg1 = paramInt2;
      messageThreadUtil$SyncQueueItem.arg2 = paramInt3;
      messageThreadUtil$SyncQueueItem.arg3 = paramInt4;
      messageThreadUtil$SyncQueueItem.arg4 = paramInt5;
      messageThreadUtil$SyncQueueItem.arg5 = paramInt6;
      messageThreadUtil$SyncQueueItem.data = paramObject;
      return messageThreadUtil$SyncQueueItem;
    } 
  }
  
  static MessageThreadUtil$SyncQueueItem obtainMessage(int paramInt1, int paramInt2, Object paramObject) {
    return obtainMessage(paramInt1, paramInt2, 0, 0, 0, 0, paramObject);
  }
  
  void recycle() {
    this.next = null;
    this.arg5 = 0;
    this.arg4 = 0;
    this.arg3 = 0;
    this.arg2 = 0;
    this.arg1 = 0;
    this.what = 0;
    this.data = null;
    synchronized (sPoolLock) {
      if (sPool != null)
        this.next = sPool; 
      sPool = this;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MessageThreadUtil$SyncQueueItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */