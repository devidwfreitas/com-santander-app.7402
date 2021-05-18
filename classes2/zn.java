import android.content.Context;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import br.com.santander.investimentoV2.shared.view.PlayGifView.PlayGifView;

public class zn {
  private PlayGifView a;
  
  private Fragment b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private Button f;
  
  private acg g;
  
  private ack h;
  
  private String i;
  
  public zn(ack paramack, View paramView, Fragment paramFragment, String paramString) {
    this.b = paramFragment;
    this.h = paramack;
    this.g = (acg)paramack.a();
    this.i = paramString;
    this.a = (PlayGifView)paramView.findViewById(la.validacao_id_santandder_gif);
    this.a.setGifResource(kz.id_santander_anima_habilitacao);
    this.c = (TextView)paramView.findViewById(la.validacao_id_santandder_text_view_titulo);
    this.d = (TextView)paramView.findViewById(la.validacao_id_santandder_text_view_sub_titulo_1);
    this.e = (TextView)paramView.findViewById(la.validacao_id_santandder_text_view_sub_titulo_2);
    this.f = (Button)paramView.findViewById(la.validacao_id_santander_button);
    if (paramString != null) {
      a();
    } else {
      b();
    } 
    if (paramack.a() == null) {
      this.g = new acg();
      return;
    } 
    this.g = (acg)paramack.a();
  }
  
  private void a() {
    this.c.setText(this.b.getActivity().getString(lg.validacao_id_santander_titulo_habilitacao));
    this.d.setText(this.b.getActivity().getString(lg.validacao_id_santander_sub_titulo_habilitacao));
    this.e.setText(this.b.getActivity().getString(lg.app_aguarde));
    StringBuffer stringBuffer = alb.a(this.i);
    if (!stringBuffer.toString().contains("ErrD")) {
      String str = stringBuffer.toString();
      Log.d("INVEBR-OTP", str);
      try {
        str = ji.a().f(str);
        zs.a().a((Context)this.h, this.g, str);
        return;
      } catch (Exception exception) {
        Log.d("INVEBR-ErroOTP", "erro na criptografia");
        return;
      } 
    } 
    Log.d("INVEBR-ErroOTP", "erro na geração");
  }
  
  private void b() {
    this.a.setGifResource(kz.id_santander_alerta_aparelho_nao_habilitado);
    this.c.setText(this.b.getActivity().getString(lg.validacao_id_santander_titulo_nao_habilitado));
    this.d.setText((CharSequence)Html.fromHtml(this.b.getActivity().getString(lg.validacao_id_santander_subtitulo_nao_habilitado)));
    this.f.setText(this.b.getActivity().getString(lg.validacao_id_santander_button));
    this.f.setVisibility(0);
    this.f.setOnClickListener(new zo(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\zn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */