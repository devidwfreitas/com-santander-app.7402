import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ca.android.app.CaMDOWebView;

public class yf extends acr {
  private static final String a = "text";
  
  private static final String c = "texto";
  
  private static final String d = "pdf";
  
  private static final String e = "html";
  
  private final xw f;
  
  private ScrollView g;
  
  private TextView h;
  
  private TextView i;
  
  private WebView j;
  
  private ImageButton k;
  
  private View l;
  
  private Button m;
  
  public yf(ack paramack, xw paramxw) {
    super(paramack);
    this.f = paramxw;
    b();
    c();
  }
  
  private void b() {
    this.g = (ScrollView)e().findViewById(la.ta_tipo_texto);
    this.j = (WebView)e().findViewById(la.ta_web);
    this.h = (TextView)e().findViewById(la.ta_titulo);
    this.i = (TextView)e().findViewById(la.ta_termo);
    this.k = (ImageButton)e().findViewById(la.header_cancel);
    this.l = e().findViewById(la.header_logo);
    this.m = (Button)e().findViewById(la.term_aceite_btn_compartilhar);
  }
  
  private void c() {
    this.l.setVisibility(0);
    this.k.setImageResource(kz.ic_back);
    this.k.setOnClickListener(new yg(this));
    this.m.setOnClickListener(new yh(this));
    if (this.f.g().equalsIgnoreCase("text") || this.f.g().equalsIgnoreCase("texto")) {
      this.j.setVisibility(8);
      this.g.setVisibility(0);
      this.h.setText(this.f.e());
      this.i.setText(this.f.f().replace("{P}", "\n\n"));
      return;
    } 
    if (this.f.g().equalsIgnoreCase("html")) {
      this.j.setVisibility(0);
      this.g.setVisibility(8);
      this.h.setText(this.f.e());
      this.j.getSettings().setDefaultTextEncodingName("utf-8");
      this.j.loadData(d(this.f.f()), "text/html; charset=utf-8", "utf-8");
      return;
    } 
    this.g.setVisibility(8);
    this.j.setVisibility(0);
    this.j.getSettings().setJavaScriptEnabled(true);
    String str2 = this.f.h().replaceAll("amp;", "");
    String str1 = str2;
    if (this.f.g().equalsIgnoreCase("pdf"))
      str1 = "https://drive.google.com/viewerng/viewer?embedded=true&url=" + str2; 
    CaMDOWebView.loadUrl(this.j, str1);
  }
  
  private String d(String paramString) {
    return paramString.replace("&lt;![CDATA[", "").replace("]]&gt;", "").replace("[", "").replace("&lt;", "<").replace("&gt;", ">");
  }
  
  private Spanned e(String paramString) {
    return (Build.VERSION.SDK_INT >= 24) ? Html.fromHtml(d(paramString), 0) : Html.fromHtml(d(paramString));
  }
  
  public void a() {
    byte b;
    try {
      String str = this.f.g().toLowerCase();
      b = -1;
      switch (str.hashCode()) {
        case 3556653:
          if (str.equals("text"))
            b = 0; 
          break;
        case 110256354:
          if (str.equals("texto"))
            b = 1; 
          break;
        case 110834:
          if (str.equals("pdf"))
            b = 2; 
          break;
        case 3213227:
          if (str.equals("html"))
            b = 3; 
          break;
      } 
    } catch (Exception exception) {
      Log.d("OPPs", exception.toString());
      return;
    } 
    switch (b) {
      case 0:
        aau.a((Context)e(), (View)this.g);
        return;
      case 1:
        aau.a((Context)e(), (View)this.g);
        return;
      case 2:
        aau.a((Context)e(), Uri.parse(this.f.h()));
        return;
      case 3:
        aau.a((Context)e(), this.f.h());
        return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\yf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */