import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.santander.app.investimentos.presentation.MeusInvestimentosActivity;
import java.io.Serializable;
import java.util.Map;

final class jcx implements ks {
  jcx(Activity paramActivity, jdf paramjdf) {}
  
  public String a(byte[] paramArrayOfbyte) {
    try {
      return (new naf()).b(paramArrayOfbyte);
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public void a() {
    Intent intent = new Intent((Context)this.a, MeusInvestimentosActivity.class);
    intent.setFlags(67108864);
    if (this.b != null)
      intent.putExtra("meus_investimentos_model", (Serializable)this.b); 
    this.a.startActivity(intent);
  }
  
  public void a(String paramString) {
    frq.a(paramString.replace(" ", ""));
  }
  
  public void a(String paramString, double paramDouble) {
    frq.a(paramString.replace(" ", ""), paramDouble);
  }
  
  public void a(String paramString1, String paramString2) {
    frq.d(paramString1.replace(" ", ""), paramString2);
  }
  
  public void a(String paramString1, String paramString2, Map<String, String> paramMap) {
    frq.a(paramString1.replace(" ", ""), paramString2, paramMap);
  }
  
  public void a(yw paramyw) {
    gyy.a(this.a.getApplicationContext(), "", new jcy(this, paramyw));
  }
  
  public void a(zx paramzx) {
    gpu.a(this.a.getString(2131299209), paramzx);
  }
  
  public void b(String paramString1, String paramString2) {
    frq.a(paramString1.replace(" ", ""), paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */