import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class om extends acf {
  private Map<String, String> a = new HashMap<String, String>();
  
  private Map<String, List<rd>> b = new HashMap<String, List<rd>>();
  
  private List<rd> c = new ArrayList<rd>();
  
  public om(abv paramabv) {
    if (paramabv instanceof qt) {
      for (rb rb : ((qt)paramabv).a().b().b().a()) {
        this.a.put(rb.a(), rb.c());
        Log.d("PROPERTIES__", rb.a() + " " + rb.c());
        if (rb.d() != null && !rb.d().isEmpty())
          this.b.put(rb.a(), rb.d()); 
      } 
      a("prazo1", this.c);
      a("prazo2", this.c);
      a("prazo3", this.c);
      if (!this.c.isEmpty())
        this.b.put("listaPrazos", this.c); 
    } 
  }
  
  private void a(String paramString, List<rd> paramList) {
    if (this.a.get(paramString) != null && !a(paramString).equals("") && Integer.parseInt(a(paramString)) != 0)
      paramList.add(new rd(a(paramString), false)); 
  }
  
  public String a(String paramString) {
    try {
      return this.a.get(paramString);
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return "";
    } 
  }
  
  public Integer b(String paramString) {
    try {
      int i = Integer.parseInt(this.a.get(paramString));
      return Integer.valueOf(i);
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return Integer.valueOf(0);
    } 
  }
  
  public Double c(String paramString) {
    try {
      return Double.valueOf(this.a.get(paramString));
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return Double.valueOf(0.0D);
    } 
  }
  
  public boolean d(String paramString) {
    try {
      if (this.a.get(paramString) != null) {
        boolean bool = ((String)this.a.get(paramString)).equalsIgnoreCase("s");
        if (bool)
          return true; 
      } 
      return false;
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return false;
    } 
  }
  
  public List<rd> e(String paramString) {
    try {
      return this.b.containsKey(paramString) ? this.b.get(paramString) : new ArrayList();
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return new ArrayList<rd>();
    } 
  }
  
  public List<Integer> f(String paramString) {
    if (this.b.containsKey(paramString)) {
      ArrayList<Integer> arrayList = new ArrayList();
      for (rd rd : this.b.get(paramString)) {
        try {
          arrayList.add(Integer.valueOf(rd.a()));
        } catch (Exception exception) {
          Log.e(getClass().getSimpleName(), exception.toString());
        } 
      } 
      return arrayList;
    } 
    return null;
  }
  
  public boolean g(String paramString) {
    return (!this.b.containsKey(paramString) || this.b == null || this.b.isEmpty());
  }
  
  public boolean h(String paramString) {
    return this.a.containsKey(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\om.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */