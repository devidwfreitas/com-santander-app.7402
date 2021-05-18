package android.support.v7.util;

class MessageThreadUtil$MessageQueue {
  private MessageThreadUtil$SyncQueueItem mRoot;
  
  MessageThreadUtil$SyncQueueItem next() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull -> 17
    //   11: aconst_null
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: aload_0
    //   18: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   21: astore_1
    //   22: aload_0
    //   23: aload_0
    //   24: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   27: invokestatic access$000 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   30: putfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   33: goto -> 13
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	36	finally
    //   17	33	36	finally
  }
  
  void removeMessages(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   6: ifnull -> 48
    //   9: aload_0
    //   10: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   13: getfield what : I
    //   16: iload_1
    //   17: if_icmpne -> 48
    //   20: aload_0
    //   21: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   24: astore_2
    //   25: aload_0
    //   26: aload_0
    //   27: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   30: invokestatic access$000 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   33: putfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   36: aload_2
    //   37: invokevirtual recycle : ()V
    //   40: goto -> 2
    //   43: astore_2
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_2
    //   47: athrow
    //   48: aload_0
    //   49: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   52: ifnull -> 105
    //   55: aload_0
    //   56: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   59: astore_3
    //   60: aload_3
    //   61: invokestatic access$000 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   64: astore_2
    //   65: aload_2
    //   66: ifnull -> 105
    //   69: aload_2
    //   70: invokestatic access$000 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   73: astore #4
    //   75: aload_2
    //   76: getfield what : I
    //   79: iload_1
    //   80: if_icmpne -> 100
    //   83: aload_3
    //   84: aload #4
    //   86: invokestatic access$002 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   89: pop
    //   90: aload_2
    //   91: invokevirtual recycle : ()V
    //   94: aload #4
    //   96: astore_2
    //   97: goto -> 65
    //   100: aload_2
    //   101: astore_3
    //   102: goto -> 94
    //   105: aload_0
    //   106: monitorexit
    //   107: return
    // Exception table:
    //   from	to	target	type
    //   2	40	43	finally
    //   48	65	43	finally
    //   69	94	43	finally
  }
  
  void sendMessage(MessageThreadUtil$SyncQueueItem paramMessageThreadUtil$SyncQueueItem) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   6: ifnonnull -> 17
    //   9: aload_0
    //   10: aload_1
    //   11: putfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   21: astore_2
    //   22: aload_2
    //   23: invokestatic access$000 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   26: ifnull -> 37
    //   29: aload_2
    //   30: invokestatic access$000 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   33: astore_2
    //   34: goto -> 22
    //   37: aload_2
    //   38: aload_1
    //   39: invokestatic access$002 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   42: pop
    //   43: goto -> 14
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	46	finally
    //   17	22	46	finally
    //   22	34	46	finally
    //   37	43	46	finally
  }
  
  void sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem paramMessageThreadUtil$SyncQueueItem) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: aload_0
    //   4: getfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   7: invokestatic access$002 : (Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   10: pop
    //   11: aload_0
    //   12: aload_1
    //   13: putfield mRoot : Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	19	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MessageThreadUtil$MessageQueue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */