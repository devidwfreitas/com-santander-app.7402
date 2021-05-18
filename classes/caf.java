import android.text.TextUtils;
import com.facebook.share.model.AppInviteContent;
import com.facebook.share.model.ShareModel;

public class caf implements cau<AppInviteContent, caf> {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private cag e;
  
  private boolean c(String paramString) {
    for (int i = 0; i < paramString.length(); i++) {
      char c = paramString.charAt(i);
      if (!Character.isDigit(c) && !Character.isLetter(c) && !Character.isSpaceChar(c))
        return false; 
    } 
    return true;
  }
  
  public caf a(cag paramcag) {
    this.e = paramcag;
    return this;
  }
  
  public caf a(AppInviteContent paramAppInviteContent) {
    return (paramAppInviteContent == null) ? this : a(paramAppInviteContent.a()).b(paramAppInviteContent.b()).a(paramAppInviteContent.d(), paramAppInviteContent.c()).a(paramAppInviteContent.e());
  }
  
  public caf a(String paramString) {
    this.a = paramString;
    return this;
  }
  
  public caf a(String paramString1, String paramString2) {
    if (!TextUtils.isEmpty(paramString1)) {
      if (paramString1.length() > 80)
        throw new IllegalArgumentException("Invalid promotion text, promotionText needs to be between1 and 80 characters long"); 
      if (!c(paramString1))
        throw new IllegalArgumentException("Invalid promotion text, promotionText can only contain alphanumericcharacters and spaces."); 
      if (!TextUtils.isEmpty(paramString2)) {
        if (paramString2.length() > 10)
          throw new IllegalArgumentException("Invalid promotion code, promotionCode can be between1 and 10 characters long"); 
        if (!c(paramString2))
          throw new IllegalArgumentException("Invalid promotion code, promotionCode can only contain alphanumeric characters and spaces."); 
      } 
    } else if (!TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("promotionCode cannot be specified without a valid promotionText");
    } 
    this.c = paramString2;
    this.d = paramString1;
    return this;
  }
  
  public caf b(String paramString) {
    this.b = paramString;
    return this;
  }
  
  public AppInviteContent b() {
    return new AppInviteContent(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\caf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */