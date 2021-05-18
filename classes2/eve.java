class eve implements evi {
  private int a(evj paramevj, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, int paramInt) {
    int i = paramStringBuilder1.length();
    paramStringBuilder1.delete(i - paramInt, i);
    paramevj.a--;
    paramInt = a(paramevj.b(), paramStringBuilder2);
    paramevj.l();
    return paramInt;
  }
  
  private static String a(CharSequence paramCharSequence, int paramInt) {
    paramInt = paramCharSequence.charAt(paramInt) * 1600 + paramCharSequence.charAt(paramInt + 1) * 40 + paramCharSequence.charAt(paramInt + 2) + 1;
    return new String(new char[] { (char)(paramInt / 256), (char)(paramInt % 256) });
  }
  
  static void a(evj paramevj, StringBuilder paramStringBuilder) {
    paramevj.a(a(paramStringBuilder, 0));
    paramStringBuilder.delete(0, 3);
  }
  
  public int a() {
    return 1;
  }
  
  int a(char paramChar, StringBuilder paramStringBuilder) {
    if (paramChar == ' ') {
      paramStringBuilder.append('\003');
      return 1;
    } 
    if (paramChar >= '0' && paramChar <= '9') {
      paramStringBuilder.append((char)(paramChar - 48 + 4));
      return 1;
    } 
    if (paramChar >= 'A' && paramChar <= 'Z') {
      paramStringBuilder.append((char)(paramChar - 65 + 14));
      return 1;
    } 
    if (paramChar >= '\000' && paramChar <= '\037') {
      paramStringBuilder.append(false);
      paramStringBuilder.append(paramChar);
      return 2;
    } 
    if (paramChar >= '!' && paramChar <= '/') {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(paramChar - 33));
      return 2;
    } 
    if (paramChar >= ':' && paramChar <= '@') {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(paramChar - 58 + 15));
      return 2;
    } 
    if (paramChar >= '[' && paramChar <= '_') {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(paramChar - 91 + 22));
      return 2;
    } 
    if (paramChar >= '`' && paramChar <= '') {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - 96));
      return 2;
    } 
    if (paramChar >= '') {
      paramStringBuilder.append("\001\036");
      return a((char)(paramChar - 128), paramStringBuilder) + 2;
    } 
    throw new IllegalArgumentException("Illegal character: " + paramChar);
  }
  
  public void a(evj paramevj) {
    StringBuilder stringBuilder = new StringBuilder();
    while (true) {
      while (true)
        break; 
      if (stringBuilder.length() % 3 == 0) {
        int i = evl.a(paramevj.a(), paramevj.a, a());
        if (i != a()) {
          paramevj.b(i);
          break;
        } 
      } 
    } 
    b(paramevj, stringBuilder);
  }
  
  void b(evj paramevj, StringBuilder paramStringBuilder) {
    int j = paramStringBuilder.length() / 3;
    int i = paramStringBuilder.length() % 3;
    j = j * 2 + paramevj.e();
    paramevj.c(j);
    j = paramevj.j().i() - j;
    if (i == 2) {
      paramStringBuilder.append(false);
      while (paramStringBuilder.length() >= 3)
        a(paramevj, paramStringBuilder); 
      if (paramevj.h())
        paramevj.a('þ'); 
    } else if (j == 1 && i == 1) {
      while (paramStringBuilder.length() >= 3)
        a(paramevj, paramStringBuilder); 
      if (paramevj.h())
        paramevj.a('þ'); 
      paramevj.a--;
    } else if (i == 0) {
      while (paramStringBuilder.length() >= 3)
        a(paramevj, paramStringBuilder); 
      if (j > 0 || paramevj.h())
        paramevj.a('þ'); 
    } else {
      throw new IllegalStateException("Unexpected case. Please report!");
    } 
    paramevj.b(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eve.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */