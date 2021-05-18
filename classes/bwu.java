import com.facebook.share.model.GameRequestContent;

public class bwu {
  public static void a(GameRequestContent paramGameRequestContent) {
    byte b = 0;
    bqx.a(paramGameRequestContent.a(), "message");
    if (paramGameRequestContent.g() != null) {
      i = 1;
    } else {
      i = 0;
    } 
    if (paramGameRequestContent.f() == cai.ASKFOR || paramGameRequestContent.f() == cai.SEND) {
      j = 1;
    } else {
      j = 0;
    } 
    if ((i ^ j) != 0)
      throw new IllegalArgumentException("Object id should be provided if and only if action type is send or askfor"); 
    int j = b;
    if (paramGameRequestContent.c() != null)
      j = 1; 
    int i = j;
    if (paramGameRequestContent.i() != null)
      i = j + 1; 
    j = i;
    if (paramGameRequestContent.h() != null)
      j = i + 1; 
    if (j > 1)
      throw new IllegalArgumentException("Parameters to, filters and suggestions are mutually exclusive"); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */