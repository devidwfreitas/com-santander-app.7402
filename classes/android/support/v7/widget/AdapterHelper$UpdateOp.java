package android.support.v7.widget;

class AdapterHelper$UpdateOp {
  static final int ADD = 1;
  
  static final int MOVE = 8;
  
  static final int POOL_SIZE = 30;
  
  static final int REMOVE = 2;
  
  static final int UPDATE = 4;
  
  int cmd;
  
  int itemCount;
  
  Object payload;
  
  int positionStart;
  
  AdapterHelper$UpdateOp(int paramInt1, int paramInt2, int paramInt3, Object paramObject) {
    this.cmd = paramInt1;
    this.positionStart = paramInt2;
    this.itemCount = paramInt3;
    this.payload = paramObject;
  }
  
  String cmdToString() {
    switch (this.cmd) {
      default:
        return "??";
      case 1:
        return "add";
      case 2:
        return "rm";
      case 4:
        return "up";
      case 8:
        break;
    } 
    return "mv";
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.cmd != ((AdapterHelper$UpdateOp)paramObject).cmd)
        return false; 
      if (this.cmd != 8 || Math.abs(this.itemCount - this.positionStart) != 1 || this.itemCount != ((AdapterHelper$UpdateOp)paramObject).positionStart || this.positionStart != ((AdapterHelper$UpdateOp)paramObject).itemCount) {
        if (this.itemCount != ((AdapterHelper$UpdateOp)paramObject).itemCount)
          return false; 
        if (this.positionStart != ((AdapterHelper$UpdateOp)paramObject).positionStart)
          return false; 
        if (this.payload != null)
          return !!this.payload.equals(((AdapterHelper$UpdateOp)paramObject).payload); 
        if (((AdapterHelper$UpdateOp)paramObject).payload != null)
          return false; 
      } 
    } 
    return true;
  }
  
  public int hashCode() {
    return (this.cmd * 31 + this.positionStart) * 31 + this.itemCount;
  }
  
  public String toString() {
    return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AdapterHelper$UpdateOp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */