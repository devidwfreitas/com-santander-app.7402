import java.util.Formatter;

class eyw {
  private static final int a = 5;
  
  private final eyq b;
  
  private final eyr[] c;
  
  eyw(eyq parameyq) {
    this.b = new eyq(parameyq);
    this.c = new eyr[parameyq.d() - parameyq.c() + 1];
  }
  
  final eyq a() {
    return this.b;
  }
  
  final eyr a(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: invokevirtual c : (I)Leyr;
    //   5: astore #4
    //   7: aload #4
    //   9: ifnull -> 15
    //   12: aload #4
    //   14: areturn
    //   15: iconst_1
    //   16: istore_2
    //   17: iload_2
    //   18: iconst_5
    //   19: if_icmpge -> 92
    //   22: aload_0
    //   23: iload_1
    //   24: invokevirtual b : (I)I
    //   27: iload_2
    //   28: isub
    //   29: istore_3
    //   30: iload_3
    //   31: iflt -> 51
    //   34: aload_0
    //   35: getfield c : [Leyr;
    //   38: iload_3
    //   39: aaload
    //   40: astore #5
    //   42: aload #5
    //   44: astore #4
    //   46: aload #5
    //   48: ifnonnull -> 12
    //   51: aload_0
    //   52: iload_1
    //   53: invokevirtual b : (I)I
    //   56: iload_2
    //   57: iadd
    //   58: istore_3
    //   59: iload_3
    //   60: aload_0
    //   61: getfield c : [Leyr;
    //   64: arraylength
    //   65: if_icmpge -> 85
    //   68: aload_0
    //   69: getfield c : [Leyr;
    //   72: iload_3
    //   73: aaload
    //   74: astore #5
    //   76: aload #5
    //   78: astore #4
    //   80: aload #5
    //   82: ifnonnull -> 12
    //   85: iload_2
    //   86: iconst_1
    //   87: iadd
    //   88: istore_2
    //   89: goto -> 17
    //   92: aconst_null
    //   93: areturn
  }
  
  final void a(int paramInt, eyr parameyr) {
    this.c[b(paramInt)] = parameyr;
  }
  
  final int b(int paramInt) {
    return paramInt - this.b.c();
  }
  
  final eyr[] b() {
    return this.c;
  }
  
  final eyr c(int paramInt) {
    return this.c[b(paramInt)];
  }
  
  public String toString() {
    Formatter formatter = new Formatter();
    eyr[] arrayOfEyr = this.c;
    int k = arrayOfEyr.length;
    int j = 0;
    int i = 0;
    while (j < k) {
      eyr eyr1 = arrayOfEyr[j];
      if (eyr1 == null) {
        int m = i + 1;
        formatter.format("%3d:    |   %n", new Object[] { Integer.valueOf(i) });
        i = m;
      } else {
        int m = i + 1;
        formatter.format("%3d: %3d|%3d%n", new Object[] { Integer.valueOf(i), Integer.valueOf(eyr1.h()), Integer.valueOf(eyr1.g()) });
        i = m;
      } 
      j++;
    } 
    String str = formatter.toString();
    formatter.close();
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */