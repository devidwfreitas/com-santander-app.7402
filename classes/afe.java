import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;

public class afe {
  private Activity a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private LinearLayout e;
  
  private CheckBox f;
  
  private Button g;
  
  private String h;
  
  public afe(Activity paramActivity) {
    this.a = paramActivity;
    a();
    b();
  }
  
  private void a() {
    this.b = (TextView)this.a.findViewById(adr.text_view_title_error);
    this.c = (TextView)this.a.findViewById(adr.text_view_subtitle_error);
    this.d = (TextView)this.a.findViewById(adr.textview_cpf_cadastro_dda);
    this.e = (LinearLayout)this.a.findViewById(adr.layout_cadastro_dda);
    this.f = (CheckBox)this.a.findViewById(adr.checkbox_termo_adesao);
    this.g = (Button)this.a.findViewById(adr.button_cadastrar_dda);
  }
  
  private void a(SpannableStringBuilder paramSpannableStringBuilder, String paramString, Object paramObject, int paramInt) {
    int i = paramSpannableStringBuilder.length();
    paramSpannableStringBuilder.append(paramString);
    paramSpannableStringBuilder.setSpan(paramObject, i, paramSpannableStringBuilder.length(), paramInt);
  }
  
  private void a(String paramString) {
    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    this.a.startActivity(intent);
  }
  
  private void b() {
    if (this.a.getIntent().getStringExtra("subtitleError") != null) {
      this.c.setText(this.a.getIntent().getStringExtra("subtitleError"));
      this.e.setVisibility(8);
    } else {
      this.c.setVisibility(8);
      this.e.setVisibility(8);
    } 
    this.b.setText(this.a.getIntent().getStringExtra("titleError"));
  }
  
  private SpannableStringBuilder c() {
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
    spannableStringBuilder.append("Li e concordo com o ");
    if (Build.VERSION.SDK_INT >= 21) {
      spannableStringBuilder.append("Termo de Adesão", new StyleSpan(1), 33);
      spannableStringBuilder.setSpan(new afi(this), spannableStringBuilder.length() - 15, spannableStringBuilder.length(), 0);
      spannableStringBuilder.append(" ao pagador eletrônico");
      spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor((Context)this.a, 17170444)), 20, 35, 0);
      return spannableStringBuilder;
    } 
    a(spannableStringBuilder, "Termo de Adesão", new StyleSpan(1), 33);
    spannableStringBuilder.setSpan(new afi(this), spannableStringBuilder.length() - 15, spannableStringBuilder.length(), 0);
    spannableStringBuilder.append(" ao pagador eletrônico");
    spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor((Context)this.a, 17170444)), 20, 35, 0);
    return spannableStringBuilder;
  }
  
  private void d() {
    Dialog dialog = ano.b(this.a);
    adh.a().a("Pagamentos_DDA_Cadastrar_Acao", "Cadastrar");
    adh.a().a("Pagamentos_DDA_Cadastrar_Autenticacao_Acao", "IDSantander");
    aeu.a(this.h, new afj(this, dialog));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\afe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */