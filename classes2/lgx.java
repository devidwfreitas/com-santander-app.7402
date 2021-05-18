import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;
import java.util.Comparator;
import java.util.List;

public class lgx implements Comparator<kue> {
  public lgx(MyInsurancesV2Activity paramMyInsurancesV2Activity, List paramList) {}
  
  public int a(kue paramkue1, kue paramkue2) {
    Integer integer4 = Integer.valueOf(this.a.size() + 1);
    Integer integer3 = Integer.valueOf(this.a.size() + 1);
    Integer integer2 = integer4;
    if (paramkue1.a() != null) {
      integer2 = integer4;
      if (paramkue1.a().d() != null)
        integer2 = paramkue1.a().d().f(); 
    } 
    Integer integer1 = integer3;
    if (paramkue2.a() != null) {
      integer1 = integer3;
      if (paramkue2.a().d() != null)
        integer1 = paramkue2.a().d().f(); 
    } 
    return integer2.compareTo(integer1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */