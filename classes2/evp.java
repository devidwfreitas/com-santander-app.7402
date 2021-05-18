final class evp extends eve {
  public int a() {
    return 3;
  }
  
  int a(char paramChar, StringBuilder paramStringBuilder) {
    if (paramChar == '\r') {
      paramStringBuilder.append(false);
      return 1;
    } 
    if (paramChar == '*') {
      paramStringBuilder.append('\001');
      return 1;
    } 
    if (paramChar == '>') {
      paramStringBuilder.append('\002');
      return 1;
    } 
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
    evl.c(paramChar);
    return 1;
  }
  
  public void a(evj paramevj) {
    StringBuilder stringBuilder = new StringBuilder();
    while (paramevj.h()) {
      char c = paramevj.b();
      paramevj.a++;
      a(c, stringBuilder);
      if (stringBuilder.length() % 3 == 0) {
        a(paramevj, stringBuilder);
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
    paramevj.k();
    int i = paramevj.j().i() - paramevj.e();
    int j = paramStringBuilder.length();
    paramevj.a -= j;
    if (paramevj.i() > 1 || i > 1 || paramevj.i() != i)
      paramevj.a('þ'); 
    if (paramevj.f() < 0)
      paramevj.b(0); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */