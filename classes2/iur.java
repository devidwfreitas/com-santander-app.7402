import android.app.Activity;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import com.santander.app.MinhaConta;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class iur implements iuq {
  private String a;
  
  private isa b;
  
  private itn c;
  
  private Activity d;
  
  public iur(Activity paramActivity, isa paramisa) {
    this.d = paramActivity;
    this.b = paramisa;
    this.c = new itp(this.d);
  }
  
  private void a(long paramLong1, long paramLong2, long paramLong3, String paramString) {
    boolean bool;
    Date date2 = new Date(paramLong1);
    Date date1 = new Date(paramLong2);
    String str3 = nak.a(date2, "ddMMyyyy");
    String str2 = nak.a(date1, "ddMMyyyy");
    if (paramLong3 < paramLong1 || paramLong3 > paramLong2) {
      bool = true;
    } else {
      bool = false;
    } 
    StringBuilder stringBuilder3 = (new StringBuilder()).append("Marketing_Banner_");
    if (bool) {
      str1 = "Generico";
    } else {
      str1 = "Dinamico";
    } 
    stringBuilder3 = stringBuilder3.append(str1).append("_HomeNaoLogada_Vigencia_DataInicio_");
    if (bool) {
      str1 = "00000000";
    } else {
      str1 = str3;
    } 
    StringBuilder stringBuilder2 = stringBuilder3.append(str1).append("_DataFim_");
    if (bool) {
      str1 = "00000000";
    } else {
      str1 = str2;
    } 
    StringBuilder stringBuilder1 = stringBuilder2.append(str1).append("_");
    String str1 = paramString;
    if (paramString == null)
      str1 = ""; 
    frq.d(stringBuilder1.append(str1).append("_Acao").toString(), "Exibir");
  }
  
  public Bitmap a() {
    long l1;
    long l2;
    Bitmap bitmap2;
    String str = c();
    SharedPreferences sharedPreferences = MinhaConta.b().getSharedPreferences("banner" + str, 0);
    this.a = sharedPreferences.getString("link", "");
    if (str.equalsIgnoreCase("NC0")) {
      String str1 = sharedPreferences.getString("imagemNaoCorrentista", "");
      l1 = sharedPreferences.getLong("dataInicioVigenciaNaoCorrentista", 0L);
      l2 = sharedPreferences.getLong("dataFimVigenciaNaoCorrentista", 0L);
    } else {
      String str1 = sharedPreferences.getString("imagem", "");
      l1 = sharedPreferences.getLong("dataInicioVigencia", 0L);
      l2 = sharedPreferences.getLong("dataFimVigencia", 0L);
    } 
    long l3 = (new Date()).getTime();
    if (l3 < l1 || l3 > l2) {
      bitmap2 = null;
      a(l1, l2, l3, str);
      return bitmap2;
    } 
    byte[] arrayOfByte = Base64.decode((String)bitmap2, 0);
    Bitmap bitmap1 = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
    a(l1, l2, l3, str);
    return bitmap1;
  }
  
  public void a(gkw paramgkw) {
    (new itt(new ius(this, paramgkw))).execute((Object[])new Void[0]);
  }
  
  public String b() {
    return this.a;
  }
  
  public String c() {
    return MinhaConta.b().getSharedPreferences("SovereignBrasilProfile", 0).getString("segmento", "999");
  }
  
  public List<irz> d() {
    ArrayList<irz> arrayList = new ArrayList();
    arrayList.add(new irz(2131297589, 0, 2130837739));
    arrayList.add(new irz(2131297601, 2131297600, 2130837753));
    arrayList.add(new irz(2131297593, 2131297592, 2130837740));
    arrayList.add(new irz(2131297595, 2131297594, 2130837741));
    arrayList.add(new irz(2131297599, 2131297598, 2130837752));
    return arrayList;
  }
  
  public int e() {
    try {
      return (MinhaConta.b().getPackageManager().getPackageInfo(MinhaConta.b().getPackageName(), 0)).versionCode;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return 0;
    } 
  }
  
  public int f() {
    return MinhaConta.b().getSharedPreferences("BOAS_VINDAS_E_NOVIDADES", 0).getInt("app_version", 0);
  }
  
  public void g() {
    boolean bool;
    try {
      bool = (MinhaConta.b().getPackageManager().getPackageInfo(MinhaConta.b().getPackageName(), 0)).versionCode;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      bool = false;
    } 
    SharedPreferences.Editor editor = MinhaConta.b().getSharedPreferences("BOAS_VINDAS_E_NOVIDADES", 0).edit();
    editor.putInt("app_version", bool);
    editor.commit();
  }
  
  public String[] h() {
    return new String[] { "android.permission.READ_PHONE_STATE", "android.permission.READ_SMS" };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iur.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */