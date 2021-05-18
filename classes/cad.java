import com.facebook.share.model.AppGroupCreationContent;
import com.facebook.share.model.ShareModel;

public class cad implements cau<AppGroupCreationContent, cad> {
  private String a;
  
  private String b;
  
  private cac c;
  
  public cad a(cac paramcac) {
    this.c = paramcac;
    return this;
  }
  
  public cad a(AppGroupCreationContent paramAppGroupCreationContent) {
    return (paramAppGroupCreationContent == null) ? this : a(paramAppGroupCreationContent.a()).b(paramAppGroupCreationContent.b()).a(paramAppGroupCreationContent.c());
  }
  
  public cad a(String paramString) {
    this.a = paramString;
    return this;
  }
  
  public cad b(String paramString) {
    this.b = paramString;
    return this;
  }
  
  public AppGroupCreationContent b() {
    return new AppGroupCreationContent(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */