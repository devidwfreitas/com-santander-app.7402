import android.support.v7.util.DiffUtil;
import java.util.Collections;
import java.util.List;

public class mfa {
  public static <A extends mec<Item>, Item extends mdt> A a(A paramA, List<Item> paramList, mey<Item> parammey, boolean paramBoolean) {
    if (paramA.h())
      mes.a(paramList); 
    paramA.a().j(false);
    if (paramA.j() != null)
      Collections.sort(paramList, paramA.j()); 
    paramA.a(paramList);
    List<Item> list = paramA.e();
    DiffUtil.DiffResult diffResult = DiffUtil.calculateDiff(new mfb(list, paramList, parammey), paramBoolean);
    if (paramList != list) {
      if (!list.isEmpty())
        list.clear(); 
      list.addAll(paramList);
    } 
    diffResult.dispatchUpdatesTo(new mfc((mec)paramA));
    return paramA;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */