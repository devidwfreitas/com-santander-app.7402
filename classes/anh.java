import br.com.santander.uisdk.edittext.SantanderEditText;
import java.util.ArrayList;
import java.util.List;

public class anh {
  private static anh a;
  
  public static anh a() {
    if (a == null)
      a = new anh(); 
    return a;
  }
  
  public List<ang> a(SantanderEditText... paramVarArgs) {
    ArrayList<ang> arrayList = new ArrayList();
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      ang ang = paramVarArgs[i].a();
      if (ang.b() != null && ang.b().size() > 0)
        arrayList.add(ang); 
    } 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */