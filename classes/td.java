import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class td extends abv {
  @ekq
  @eks(a = "periods")
  private List<tl> a;
  
  public td(int paramInt) {
    Calendar calendar = Calendar.getInstance();
    this.a = new ArrayList<tl>();
    for (int i = 1; i <= paramInt; i++) {
      calendar.add(2, i);
      tl tl = new tl(a(calendar.get(2)), "" + calendar.get(1), null);
      this.a.add(tl);
    } 
  }
  
  private String a(int paramInt) {
    String str = "00" + paramInt;
    return str.substring(str.length() - 2);
  }
  
  public List<tl> a() {
    return this.a;
  }
  
  public void a(List<tl> paramList) {
    this.a = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\td.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */