final class evo extends eve {
  public int a() {
    return 2;
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
    if (paramChar >= 'a' && paramChar <= 'z') {
      paramStringBuilder.append((char)(paramChar - 97 + 14));
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
    if (paramChar == '`') {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - 96));
      return 2;
    } 
    if (paramChar >= 'A' && paramChar <= 'Z') {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - 65 + 1));
      return 2;
    } 
    if (paramChar >= '{' && paramChar <= '') {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - 123 + 27));
      return 2;
    } 
    if (paramChar >= '') {
      paramStringBuilder.append("\001\036");
      return a((char)(paramChar - 128), paramStringBuilder) + 2;
    } 
    evl.c(paramChar);
    return -1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */