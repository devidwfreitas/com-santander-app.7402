package android.support.v7.widget;

class ViewBoundsCheck$BoundFlags {
  int mBoundFlags = 0;
  
  int mChildEnd;
  
  int mChildStart;
  
  int mRvEnd;
  
  int mRvStart;
  
  void addFlags(int paramInt) {
    this.mBoundFlags |= paramInt;
  }
  
  boolean boundsMatch() {
    return (((this.mBoundFlags & 0x7) == 0 || (this.mBoundFlags & compare(this.mChildStart, this.mRvStart) << 0) != 0) && ((this.mBoundFlags & 0x70) == 0 || (this.mBoundFlags & compare(this.mChildStart, this.mRvEnd) << 4) != 0) && ((this.mBoundFlags & 0x700) == 0 || (this.mBoundFlags & compare(this.mChildEnd, this.mRvStart) << 8) != 0) && ((this.mBoundFlags & 0x7000) == 0 || (this.mBoundFlags & compare(this.mChildEnd, this.mRvEnd) << 12) != 0));
  }
  
  int compare(int paramInt1, int paramInt2) {
    return (paramInt1 > paramInt2) ? 1 : ((paramInt1 == paramInt2) ? 2 : 4);
  }
  
  void resetFlags() {
    this.mBoundFlags = 0;
  }
  
  void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mRvStart = paramInt1;
    this.mRvEnd = paramInt2;
    this.mChildStart = paramInt3;
    this.mChildEnd = paramInt4;
  }
  
  void setFlags(int paramInt1, int paramInt2) {
    this.mBoundFlags = this.mBoundFlags & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ViewBoundsCheck$BoundFlags.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */