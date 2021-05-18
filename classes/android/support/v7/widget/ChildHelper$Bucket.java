package android.support.v7.widget;

class ChildHelper$Bucket {
  static final int BITS_PER_WORD = 64;
  
  static final long LAST_BIT = -9223372036854775808L;
  
  long mData = 0L;
  
  ChildHelper$Bucket next;
  
  private void ensureNext() {
    if (this.next == null)
      this.next = new ChildHelper$Bucket(); 
  }
  
  void clear(int paramInt) {
    if (paramInt >= 64) {
      if (this.next != null)
        this.next.clear(paramInt - 64); 
      return;
    } 
    this.mData &= 1L << paramInt ^ 0xFFFFFFFFFFFFFFFFL;
  }
  
  int countOnesBefore(int paramInt) {
    return (this.next == null) ? ((paramInt >= 64) ? Long.bitCount(this.mData) : Long.bitCount(this.mData & (1L << paramInt) - 1L)) : ((paramInt < 64) ? Long.bitCount(this.mData & (1L << paramInt) - 1L) : (this.next.countOnesBefore(paramInt - 64) + Long.bitCount(this.mData)));
  }
  
  boolean get(int paramInt) {
    if (paramInt >= 64) {
      ensureNext();
      return this.next.get(paramInt - 64);
    } 
    return ((this.mData & 1L << paramInt) != 0L);
  }
  
  void insert(int paramInt, boolean paramBoolean) {
    boolean bool;
    if (paramInt >= 64) {
      ensureNext();
      this.next.insert(paramInt - 64, paramBoolean);
      return;
    } 
    if ((this.mData & Long.MIN_VALUE) != 0L) {
      bool = true;
    } else {
      bool = false;
    } 
    long l1 = (1L << paramInt) - 1L;
    long l2 = this.mData;
    this.mData = ((l1 ^ 0xFFFFFFFFFFFFFFFFL) & this.mData) << 1L | l2 & l1;
    if (paramBoolean) {
      set(paramInt);
    } else {
      clear(paramInt);
    } 
    if (bool || this.next != null) {
      ensureNext();
      this.next.insert(0, bool);
      return;
    } 
  }
  
  boolean remove(int paramInt) {
    boolean bool1;
    if (paramInt >= 64) {
      ensureNext();
      return this.next.remove(paramInt - 64);
    } 
    long l1 = 1L << paramInt;
    if ((this.mData & l1) != 0L) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.mData &= l1 ^ 0xFFFFFFFFFFFFFFFFL;
    l1--;
    long l2 = this.mData;
    this.mData = Long.rotateRight((l1 ^ 0xFFFFFFFFFFFFFFFFL) & this.mData, 1) | l2 & l1;
    boolean bool2 = bool1;
    if (this.next != null) {
      if (this.next.get(0))
        set(63); 
      this.next.remove(0);
      return bool1;
    } 
    return bool2;
  }
  
  void reset() {
    this.mData = 0L;
    if (this.next != null)
      this.next.reset(); 
  }
  
  void set(int paramInt) {
    if (paramInt >= 64) {
      ensureNext();
      this.next.set(paramInt - 64);
      return;
    } 
    this.mData |= 1L << paramInt;
  }
  
  public String toString() {
    return (this.next == null) ? Long.toBinaryString(this.mData) : (this.next.toString() + "xx" + Long.toBinaryString(this.mData));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ChildHelper$Bucket.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */