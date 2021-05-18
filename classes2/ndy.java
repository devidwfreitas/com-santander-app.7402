import android.content.Context;
import java.util.Arrays;
import java.util.List;

public class ndy {
  public List<String> a(Context paramContext) {
    return Arrays.asList(paramContext.getResources().getStringArray(2131689473));
  }
  
  public boolean b(Context paramContext) {
    gyu gyu = new gyu(paramContext);
    gyu.a();
    List<gyv> list = gyu.c();
    gyu.close();
    for (gyv gyv : list) {
      if (gyv.c() != null && !gyv.c().isEmpty())
        return true; 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */