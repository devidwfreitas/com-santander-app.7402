final class evh implements evi {
  private static String a(CharSequence paramCharSequence, int paramInt) {
    byte b1;
    byte b2;
    char c = Character.MIN_VALUE;
    int i = paramCharSequence.length() - paramInt;
    if (i == 0)
      throw new IllegalStateException("StringBuilder must not be empty"); 
    char c4 = paramCharSequence.charAt(paramInt);
    if (i >= 2) {
      b1 = paramCharSequence.charAt(paramInt + 1);
    } else {
      b1 = 0;
    } 
    if (i >= 3) {
      b2 = paramCharSequence.charAt(paramInt + 2);
    } else {
      b2 = 0;
    } 
    if (i >= 4)
      c = paramCharSequence.charAt(paramInt + 3); 
    paramInt = c + (b2 << 6) + (b1 << 12) + (c4 << 18);
    char c1 = (char)(paramInt >> 16 & 0xFF);
    char c2 = (char)(paramInt >> 8 & 0xFF);
    char c3 = (char)(paramInt & 0xFF);
    paramCharSequence = new StringBuilder(3);
    paramCharSequence.append(c1);
    if (i >= 2)
      paramCharSequence.append(c2); 
    if (i >= 3)
      paramCharSequence.append(c3); 
    return paramCharSequence.toString();
  }
  
  private static void a(char paramChar, StringBuilder paramStringBuilder) {
    if (paramChar >= ' ' && paramChar <= '?') {
      paramStringBuilder.append(paramChar);
      return;
    } 
    if (paramChar >= '@' && paramChar <= '^') {
      paramStringBuilder.append((char)(paramChar - 64));
      return;
    } 
    evl.c(paramChar);
  }
  
  private static void a(evj paramevj, CharSequence paramCharSequence) {
    int i;
    int j = 1;
    try {
      i = paramCharSequence.length();
      if (i == 0)
        return; 
      if (i == 1) {
        paramevj.k();
        int m = paramevj.j().i();
        int n = paramevj.e();
        int i1 = paramevj.i();
        if (i1 == 0 && m - n <= 2)
          return; 
      } 
    } finally {
      paramevj.b(0);
    } 
    int k = i - 1;
    paramCharSequence = a(paramCharSequence, 0);
    if (!paramevj.h()) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i != 0 && k <= 2) {
      i = j;
    } else {
      i = 0;
    } 
    j = i;
    if (k <= 2) {
      paramevj.c(paramevj.e() + k);
      j = i;
      if (paramevj.j().i() - paramevj.e() >= 3) {
        paramevj.c(paramevj.e() + paramCharSequence.length());
        j = 0;
      } 
    } 
    if (j != 0) {
      paramevj.l();
      paramevj.a -= k;
    } else {
      paramevj.a((String)paramCharSequence);
    } 
    paramevj.b(0);
  }
  
  public int a() {
    return 4;
  }
  
  public void a(evj paramevj) {
    StringBuilder stringBuilder = new StringBuilder();
    while (paramevj.h()) {
      a(paramevj.b(), stringBuilder);
      paramevj.a++;
      if (stringBuilder.length() >= 4) {
        paramevj.a(a(stringBuilder, 0));
        stringBuilder.delete(0, 4);
        if (evl.a(paramevj.a(), paramevj.a, a()) != a()) {
          paramevj.b(0);
          break;
        } 
      } 
    } 
    stringBuilder.append('\037');
    a(paramevj, stringBuilder);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */