import java.util.ArrayList;
import java.util.List;

public class kvh {
  @eks(a = "id")
  private long a;
  
  @eks(a = "username")
  private String b;
  
  @eks(a = "enabled")
  private boolean c;
  
  @eks(a = "question")
  private String d;
  
  @eks(a = "answers")
  private List<kvi> e;
  
  @eks(a = "ratings")
  private List<String> f;
  
  private kvk c(String paramString) {
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return null;
          case 0:
            return kvk.ONE_STAR;
          case 1:
            return kvk.TWO_STARS;
          case 2:
            return kvk.THREE_STARS;
          case 3:
            return kvk.FOUR_STARS;
          case 4:
            break;
        } 
        return kvk.FIVE_STARS;
      case -1480392533:
        if (paramString.equals("ONE_STAR"))
          b = 0; 
      case -304339858:
        if (paramString.equals("TWO_STARS"))
          b = 1; 
      case -164477376:
        if (paramString.equals("THREE_STARS"))
          b = 2; 
      case -1551155224:
        if (paramString.equals("FOUR_STARS"))
          b = 3; 
      case -501165964:
        break;
    } 
    if (paramString.equals("FIVE_STARS"))
      b = 4; 
  }
  
  public long a() {
    return this.a;
  }
  
  public void a(long paramLong) {
    this.a = paramLong;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(List<kvi> paramList) {
    this.e = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.d = paramString;
  }
  
  public void b(List<String> paramList) {
    this.f = paramList;
  }
  
  public boolean c() {
    return this.c;
  }
  
  public String d() {
    return this.d;
  }
  
  public List<kvi> e() {
    return this.e;
  }
  
  public List<kvi> f() {
    ArrayList<kvi> arrayList = new ArrayList();
    if (this.e != null)
      for (int i = 0; i < this.e.size(); i++) {
        kvi kvi = this.e.get(i);
        if (kvi.e())
          arrayList.add(kvi.h()); 
      }  
    return arrayList;
  }
  
  public List<kvk> g() {
    ArrayList<kvk> arrayList = new ArrayList();
    for (int i = 0; i < this.f.size(); i++) {
      kvk kvk = c(this.f.get(i));
      if (kvk != null)
        arrayList.add(kvk); 
    } 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kvh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */