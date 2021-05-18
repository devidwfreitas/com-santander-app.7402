import android.content.res.Resources;
import com.santander.app.MinhaConta;
import java.util.ArrayList;
import java.util.List;

public class idr implements idq {
  public List<ibu> a() {
    Resources resources = MinhaConta.b().getResources();
    ArrayList<ibu> arrayList = new ArrayList();
    ibu ibu = new ibu();
    ibu.a(resources.getString(2131297409));
    ibu.b(resources.getString(2131297408));
    ibu.a(resources.getTextArray(2131689478));
    ibu.b(resources.getTextArray(2131689477));
    arrayList.add(ibu);
    ibu = new ibu();
    ibu.a(resources.getString(2131297418));
    ibu.b(resources.getString(2131297417));
    ibu.a(resources.getTextArray(2131689487));
    ibu.b(resources.getTextArray(2131689486));
    arrayList.add(ibu);
    ibu = new ibu();
    ibu.a(resources.getString(2131297416));
    ibu.b(resources.getString(2131297415));
    ibu.a(resources.getTextArray(2131689485));
    ibu.b(resources.getTextArray(2131689484));
    arrayList.add(ibu);
    ibu = new ibu();
    ibu.a(resources.getString(2131297412));
    ibu.b(resources.getString(2131297411));
    ibu.a(resources.getTextArray(2131689481));
    ibu.b(resources.getTextArray(2131689480));
    arrayList.add(ibu);
    ibu = new ibu();
    ibu.a(resources.getString(2131297414));
    ibu.b(resources.getString(2131297413));
    ibu.a(resources.getTextArray(2131689483));
    ibu.b(resources.getTextArray(2131689482));
    arrayList.add(ibu);
    ibu = new ibu();
    ibu.a(resources.getString(2131297420));
    ibu.b(resources.getString(2131297419));
    ibu.a(resources.getTextArray(2131689489));
    ibu.b(resources.getTextArray(2131689488));
    arrayList.add(ibu);
    ibu = new ibu();
    ibu.a(resources.getString(2131297422));
    ibu.b(resources.getString(2131297421));
    ibu.a(resources.getTextArray(2131689491));
    ibu.b(resources.getTextArray(2131689490));
    arrayList.add(ibu);
    ibu = new ibu();
    ibu.a(resources.getString(2131297410));
    ibu.b("");
    ibu.a((CharSequence[])new String[0]);
    ibu.b(resources.getTextArray(2131689479));
    arrayList.add(ibu);
    return arrayList;
  }
  
  public void a(gkw<ibr> paramgkw) {
    ibq ibq = new ibq();
    ibq.setConta(null);
    ibq.setConnUuid(miq.C().i());
    if (miq.C().f().l() != null && miq.C().j() != null)
      ibq.setTokenSessao(miq.C().j()); 
    (new idv(new ids(this, paramgkw))).execute((Object[])new ibq[] { ibq });
  }
  
  public List<ibn> b() {
    ArrayList<ibn> arrayList = new ArrayList();
    ibn ibn = new ibn();
    ibn.a("APLICATIVO WAY");
    ibn.a(2130838816);
    arrayList.add(ibn);
    ibn = new ibn();
    ibn.a("SANTANDER.COM.BR");
    ibn.a(2130838752);
    arrayList.add(ibn);
    ibn = new ibn();
    ibn.a("@SANTANDER_BR");
    ibn.a(2130838814);
    arrayList.add(ibn);
    ibn = new ibn();
    ibn.a("SANTANDER BRASIL");
    ibn.a(2130838741);
    arrayList.add(ibn);
    return arrayList;
  }
  
  public void b(gkw<hzt> paramgkw) {
    miq miq = miq.C();
    hzs hzs = new hzs();
    hzs.setConnUuid(miq.i());
    hzs.setTokenSessao(miq.j());
    (new ibl(new idu(this, paramgkw))).execute((Object[])new hzs[] { hzs });
  }
  
  public void c(gkw paramgkw) {
    (new itt(new idt(this, paramgkw))).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\idr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */