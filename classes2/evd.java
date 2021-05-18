final class evd implements evi {
  private static char a(char paramChar, int paramInt) {
    int i = paramInt * 149 % 255 + 1 + paramChar;
    return (i <= 255) ? (char)i : (char)(i - 256);
  }
  
  public int a() {
    return 5;
  }
  
  public void a(evj paramevj) {
    boolean bool = false;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(false);
    while (paramevj.h()) {
      stringBuilder.append(paramevj.b());
      paramevj.a++;
      int k = evl.a(paramevj.a(), paramevj.a, a());
      if (k != a()) {
        paramevj.b(k);
        break;
      } 
    } 
    int j = stringBuilder.length() - 1;
    int i = paramevj.e() + j + 1;
    paramevj.c(i);
    if (paramevj.j().i() - i > 0) {
      i = 1;
    } else {
      i = 0;
    } 
    if (paramevj.h() || i != 0)
      if (j <= 249) {
        stringBuilder.setCharAt(0, (char)j);
      } else if (j > 249 && j <= 1555) {
        stringBuilder.setCharAt(0, (char)(j / 250 + 249));
        stringBuilder.insert(1, (char)(j % 250));
      } else {
        throw new IllegalStateException("Message length not in valid ranges: " + j);
      }  
    j = stringBuilder.length();
    for (i = bool; i < j; i++)
      paramevj.a(a(stringBuilder.charAt(i), paramevj.e() + 1)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */