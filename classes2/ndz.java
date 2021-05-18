import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public class ndz {
  public gyv a(Context paramContext, String paramString) {
    gyu gyu = new gyu(paramContext);
    gyu.a();
    List<gyv> list = gyu.c();
    gyu.close();
    for (gyv gyv : list) {
      if (gyv.c() != null && !gyv.c().isEmpty() && nag.b(gyv.c()).equals(nai.c(paramString)))
        return gyv; 
    } 
    return null;
  }
  
  public String a(gyv paramgyv) {
    return alb.a(paramgyv.a().toString()).toString();
  }
  
  public List<gyv> a(Context paramContext) {
    gyu gyu = new gyu(paramContext);
    gyu.a();
    List<gyv> list = gyu.c();
    gyu.close();
    ArrayList<gyv> arrayList = new ArrayList();
    for (gyv gyv : list) {
      if (gyv.c() != null && !gyv.c().isEmpty())
        arrayList.add(gyv); 
    } 
    return arrayList;
  }
  
  public long b(gyv paramgyv) {
    return alb.d(paramgyv.a().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */