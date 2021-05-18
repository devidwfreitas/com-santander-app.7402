package br.com.santander.dynamicauth.features.idsantander.a;

import alb;
import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.text.Html;
import android.widget.TextView;
import br.com.santander.dynamicauth.DynamicAuthService;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.exception.DynamicAuthException;
import br.com.santander.dynamicauth.features.idsantander.view.PlayGifView.PlayGifView;
import kl;
import km;
import kn;
import ko;

public class a {
  private final String a = "819B98B42786BFBEC717C789AF7B3";
  
  private final String b = "com.santander.app.idsantander.idsantanderprovedor";
  
  private final String c = "content://com.santander.app.idsantander.idsantanderprovedor/";
  
  private final Uri d = Uri.parse("content://com.santander.app.idsantander.idsantanderprovedor/819B98B42786BFBEC717C789AF7B3");
  
  private Activity e;
  
  private PlayGifView f;
  
  private TextView g;
  
  private TextView h;
  
  private final long i = 1500L;
  
  public a(Activity paramActivity) {
    this.e = paramActivity;
    this.f = (PlayGifView)paramActivity.findViewById(R.id.validacao_id_santandder_gif);
    this.f.setGifResource(R.drawable.id_santander_anima_habilitacao);
    this.g = (TextView)paramActivity.findViewById(R.id.validacao_id_santandder_text_view_titulo);
    this.h = (TextView)paramActivity.findViewById(R.id.validacao_id_santandder_text_view_sub_titulo_1);
    c();
  }
  
  private String a() {
    Cursor cursor = this.e.getContentResolver().query(this.d, null, null, null, null);
    if (cursor != null && cursor.moveToFirst()) {
      String str = "";
      while (true) {
        String str1 = str + "ID: " + cursor.getString(cursor.getColumnIndex("_id")) + " CONTENT: " + cursor.getString(cursor.getColumnIndex("content")) + System.getProperty("line.separator");
        str = str1;
        if (!cursor.moveToNext())
          return str1; 
      } 
    } 
    return "";
  }
  
  private void a(String paramString) {
    String str1;
    this.h.setText((CharSequence)Html.fromHtml(this.e.getResources().getString(R.string.titulo_validacao_id_santander)));
    String str2 = "";
    try {
      StringBuffer stringBuffer = alb.a(paramString);
      if (stringBuffer != null && !stringBuffer.toString().contains("ErrD")) {
        str1 = stringBuffer.toString();
      } else {
        str1 = "EddD";
      } 
    } catch (Exception exception) {
      DynamicAuthException.showException(exception);
      DynamicAuthService.initError((Context)this.e, null, null, null, DynamicAuthEnum.ERRO_ID_SANTANDER.toString());
      this.e.finish();
      str1 = str2;
    } 
    (new Handler()).postDelayed((Runnable)new kl(this, str1), 1500L);
  }
  
  private void b() {
    this.f.setGifResource(R.drawable.id_santander_alerta_aparelho_nao_habilitado);
    this.g.setText(this.e.getString(R.string.validacao_id_santander_titulo_nao_habilitado));
    this.h.setText((CharSequence)Html.fromHtml(this.e.getString(R.string.validacao_id_santander_subtitulo_nao_habilitado)));
  }
  
  private void b(String paramString) {
    this.h.setText((CharSequence)Html.fromHtml(this.e.getResources().getString(R.string.titulo_validacao_id_santander)));
    this.e.getApplication().getPackageName();
    paramString = alb.a((Context)this.e, paramString);
    (new Handler()).postDelayed((Runnable)new km(this, paramString), 1500L);
  }
  
  private void c() {
    this.h.setText((CharSequence)Html.fromHtml(this.e.getResources().getString(R.string.titulo_enviando_id_santander)));
    (new Handler()).postDelayed((Runnable)new ko(this), 1500L);
  }
  
  private void c(String paramString) {
    this.f.setGifResource(R.drawable.id_santander_anima_ok);
    this.h.setText((CharSequence)Html.fromHtml(this.e.getResources().getString(R.string.titulo_validado_id_santander)));
    (new Handler()).postDelayed((Runnable)new kn(this, paramString), 1500L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\idsantander\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */