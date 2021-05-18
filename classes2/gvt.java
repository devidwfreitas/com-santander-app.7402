import android.content.res.Resources;
import com.santander.app.MinhaConta;
import java.util.ArrayList;

public class gvt {
  public ArrayList<gky> a() {
    Resources resources = MinhaConta.b().getResources();
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky(resources.getText(2131296984)));
    arrayList.add(new gky(resources.getString(2131296985), ""));
    arrayList.add(new gky(resources.getString(2131296986), ""));
    arrayList.add(new gky(resources.getText(2131296988)));
    arrayList.add(new gky(resources.getText(2131296987)));
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */