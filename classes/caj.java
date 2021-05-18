import android.os.Parcel;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.ShareModel;
import java.util.Arrays;
import java.util.List;

public class caj implements cau<GameRequestContent, caj> {
  private String a;
  
  private List<String> b;
  
  private String c;
  
  private String d;
  
  private cai e;
  
  private String f;
  
  private cak g;
  
  private List<String> h;
  
  caj a(Parcel paramParcel) {
    return a((GameRequestContent)paramParcel.readParcelable(GameRequestContent.class.getClassLoader()));
  }
  
  public caj a(cai paramcai) {
    this.e = paramcai;
    return this;
  }
  
  public caj a(cak paramcak) {
    this.g = paramcak;
    return this;
  }
  
  public caj a(GameRequestContent paramGameRequestContent) {
    return (paramGameRequestContent == null) ? this : a(paramGameRequestContent.a()).a(paramGameRequestContent.c()).d(paramGameRequestContent.d()).c(paramGameRequestContent.e()).a(paramGameRequestContent.f()).e(paramGameRequestContent.g()).a(paramGameRequestContent.h()).b(paramGameRequestContent.i());
  }
  
  public caj a(String paramString) {
    this.a = paramString;
    return this;
  }
  
  public caj a(List<String> paramList) {
    this.b = paramList;
    return this;
  }
  
  public caj b(String paramString) {
    if (paramString != null)
      this.b = Arrays.asList(paramString.split(",")); 
    return this;
  }
  
  public caj b(List<String> paramList) {
    this.h = paramList;
    return this;
  }
  
  public GameRequestContent b() {
    return new GameRequestContent(this, null);
  }
  
  public caj c(String paramString) {
    this.c = paramString;
    return this;
  }
  
  public caj d(String paramString) {
    this.d = paramString;
    return this;
  }
  
  public caj e(String paramString) {
    this.f = paramString;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\caj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */