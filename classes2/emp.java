class emp implements CharSequence {
  char[] a;
  
  public char charAt(int paramInt) {
    return this.a[paramInt];
  }
  
  public int length() {
    return this.a.length;
  }
  
  public CharSequence subSequence(int paramInt1, int paramInt2) {
    return new String(this.a, paramInt1, paramInt2 - paramInt1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */