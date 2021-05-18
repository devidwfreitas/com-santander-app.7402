import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.PoupancaAplicacaoConfirmacaoActivity;
import org.apache.commons.codec.binary.Base64;

public class ilk extends Fragment {
  public final String a = "PoupancaNovaContaContratoFragment";
  
  private View b;
  
  private PoupancaAplicacaoConfirmacaoActivity c = null;
  
  private SharedPreferences d;
  
  private String e;
  
  private int f;
  
  private int g;
  
  private int h;
  
  private void a() {
    this.d = getActivity().getSharedPreferences("carrinhoPoupanca", 0);
    SharedPreferences.Editor editor = this.d.edit();
    editor.putInt("conta", 0);
    editor.putInt("contaAplicacao", 0);
    editor.putString("valor", "");
    editor.putInt("dataPosition", 0);
    editor.putString("data", "");
    editor.putBoolean("clickCard", false);
    editor.putString("cpf", "");
    editor.commit();
  }
  
  private void b() {
    this.d = getActivity().getSharedPreferences("carrinhoPoupanca", 0);
    this.e = this.d.getString("valor", "");
    this.f = this.d.getInt("contaAplicacao", 0);
    this.g = this.d.getInt("conta", 0);
    this.h = this.d.getInt("dataPosition", 0);
    a();
  }
  
  private void c() {
    this.d = getActivity().getSharedPreferences("carrinhoPoupanca", 0);
    SharedPreferences.Editor editor = this.d.edit();
    try {
      String str1 = new String(Base64.encodeBase64(miq.C().f().k().getBytes("UTF-8")));
      int i = this.g;
      int j = this.f;
      int k = this.h;
      String str2 = this.e;
      editor.putInt("conta", i);
      editor.putInt("contaAplicacao", j);
      editor.putString("valor", str2);
      editor.putInt("dataPosition", k);
      editor.putString("data", "");
      editor.putBoolean("clickCard", false);
      editor.putString("cpf", str1);
      editor.commit();
      return;
    } catch (Exception exception) {
      Log.e("ERROR", exception.getMessage());
      return;
    } 
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    this.c = (PoupancaAplicacaoConfirmacaoActivity)paramActivity;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    this.b = paramLayoutInflater.inflate(2130969418, paramViewGroup, false);
    b();
    ((TextView)this.b.findViewById(2131759259)).setText((CharSequence)Html.fromHtml(getResources().getString(2131297760)));
    ((Button)this.b.findViewById(2131757527)).setOnClickListener(new ill(this));
    ((Button)this.b.findViewById(2131757774)).setOnClickListener(new ilm(this));
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ilk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */