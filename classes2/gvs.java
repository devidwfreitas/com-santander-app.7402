import android.content.res.Resources;
import com.santander.app.MinhaConta;
import java.util.ArrayList;

public class gvs {
  public ArrayList<gky> a() {
    Resources resources = MinhaConta.b().getResources();
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky(resources.getText(2131296983)));
    arrayList.add(new gky(resources.getString(2131296985), ""));
    arrayList.add(new gky(resources.getString(2131296986), ""));
    gky gky = new gky("");
    gky.a(true);
    arrayList.add(gky);
    arrayList.add(new gky(resources.getText(2131296993)));
    arrayList.add(new gky(resources.getString(2131296992), ""));
    arrayList.add(new gky(resources.getString(2131296989), ""));
    gky = new gky("");
    gky.a(true);
    arrayList.add(gky);
    arrayList.add(new gky(resources.getText(2131296994)));
    arrayList.add(new gky(resources.getString(2131296995), ""));
    gky = new gky("");
    gky.a(true);
    arrayList.add(gky);
    arrayList.add(new gky(resources.getText(2131296990)));
    arrayList.add(new gky(resources.getString(2131296991), ""));
    arrayList.add(new gky(resources.getText(2131296982)));
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gvs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */