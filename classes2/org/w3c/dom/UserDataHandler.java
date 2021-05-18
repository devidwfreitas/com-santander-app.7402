package org.w3c.dom;

public interface UserDataHandler {
  public static final short NODE_ADOPTED = 5;
  
  public static final short NODE_CLONED = 1;
  
  public static final short NODE_DELETED = 3;
  
  public static final short NODE_IMPORTED = 2;
  
  public static final short NODE_RENAMED = 4;
  
  void handle(short paramShort, String paramString, Object paramObject, Node paramNode1, Node paramNode2);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\w3c\dom\UserDataHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */