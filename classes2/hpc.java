class hpc {
  private hxm a;
  
  private hxq b;
  
  private boolean a(int paramInt) {
    boolean bool = false;
    try {
      if (!this.b.isMorno()) {
        boolean bool1 = bool;
        if (paramInt <= this.b.getParcelaMax()) {
          int i = this.b.getParcelaMin();
          bool1 = bool;
          if (paramInt >= i)
            return true; 
        } 
        return bool1;
      } 
      return true;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  private boolean b(float paramFloat) {
    boolean bool = false;
    try {
      if (!this.b.isMorno()) {
        boolean bool1 = bool;
        if (paramFloat <= this.b.getValorLimiteMax()) {
          float f = this.b.getValorLimiteMin();
          bool1 = bool;
          if (paramFloat >= f)
            return true; 
        } 
        return bool1;
      } 
      return true;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  private boolean b(int paramInt) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    try {
      if (paramInt <= this.a.getParcelaMax()) {
        int i = this.a.getParcelaMin();
        bool1 = bool2;
        if (paramInt >= i)
          bool1 = true; 
      } 
      return bool1;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  private boolean c(float paramFloat) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    try {
      if (paramFloat <= this.a.getValorLimiteMax()) {
        float f = this.a.getValorLimiteMin();
        bool1 = bool2;
        if (paramFloat >= f)
          bool1 = true; 
      } 
      return bool1;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  @hxu
  int a(float paramFloat) {
    byte b = 3;
    boolean bool1 = b(paramFloat);
    boolean bool2 = c(paramFloat);
    return (!bool1 && !bool2) ? 99 : ((bool1 && !bool2) ? 11 : (!bool1 ? 10 : b));
  }
  
  @hxu
  int a(float paramFloat, int paramInt) {
    // Byte code:
    //   0: bipush #99
    //   2: istore_3
    //   3: iload_2
    //   4: ifne -> 15
    //   7: aload_0
    //   8: fload_1
    //   9: invokevirtual a : (F)I
    //   12: istore_2
    //   13: iload_2
    //   14: ireturn
    //   15: aload_0
    //   16: fload_1
    //   17: invokespecial b : (F)Z
    //   20: istore #4
    //   22: aload_0
    //   23: fload_1
    //   24: invokespecial c : (F)Z
    //   27: istore #5
    //   29: aload_0
    //   30: iload_2
    //   31: invokespecial a : (I)Z
    //   34: istore #6
    //   36: aload_0
    //   37: iload_2
    //   38: invokespecial b : (I)Z
    //   41: istore #7
    //   43: iload #4
    //   45: ifne -> 55
    //   48: iload_3
    //   49: istore_2
    //   50: iload #5
    //   52: ifeq -> 13
    //   55: iload #6
    //   57: ifne -> 67
    //   60: iload_3
    //   61: istore_2
    //   62: iload #7
    //   64: ifeq -> 13
    //   67: iload #4
    //   69: ifeq -> 87
    //   72: iload #5
    //   74: ifne -> 87
    //   77: iload_3
    //   78: istore_2
    //   79: iload #6
    //   81: ifeq -> 13
    //   84: bipush #11
    //   86: ireturn
    //   87: iload #4
    //   89: ifne -> 102
    //   92: iload_3
    //   93: istore_2
    //   94: iload #7
    //   96: ifeq -> 13
    //   99: bipush #10
    //   101: ireturn
    //   102: iload #6
    //   104: ifeq -> 115
    //   107: iload #7
    //   109: ifne -> 115
    //   112: bipush #11
    //   114: ireturn
    //   115: iload #6
    //   117: ifne -> 123
    //   120: bipush #10
    //   122: ireturn
    //   123: iconst_3
    //   124: ireturn
  }
  
  void a(hxm paramhxm) {
    this.a = paramhxm;
  }
  
  void a(hxq paramhxq) {
    this.b = paramhxq;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */