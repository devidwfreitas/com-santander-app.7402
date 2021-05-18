package com.santander.app.seguros.ui.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import mbz;

@Deprecated
public class JustifiedTextView extends WebView {
  private String a = "<html><body style='text-align:justify;color:rgba(%s);font-size:%dpx;margin: 0px 0px 0px 0px;'>%s</body></html>";
  
  private String b = "0,0,0,255";
  
  private String c = "";
  
  private int d = 12;
  
  private int e = 0;
  
  public JustifiedTextView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    setWebChromeClient((WebChromeClient)new mbz(this));
  }
  
  @SuppressLint({"NewApi"})
  private void a() {
    getSettings().setDefaultTextEncodingName("utf-8");
    loadData(String.format(this.a, new Object[] { this.b, Integer.valueOf(this.d), this.c }), "text/html", "utf-8");
    super.setBackgroundColor(this.e);
    if (Build.VERSION.SDK_INT >= 11)
      setLayerType(1, null); 
  }
  
  public void setBackgroundColor(int paramInt) {
    this.e = paramInt;
    a();
  }
  
  public void setText(String paramString) {
    this.c = paramString;
    a();
  }
  
  public void setTextColor(int paramInt) {
    String str = Integer.toHexString(paramInt);
    paramInt = Integer.parseInt(str.substring(0, 2), 16);
    this.b = String.format("%d,%d,%d,%d", new Object[] { Integer.valueOf(Integer.parseInt(str.substring(2, 4), 16)), Integer.valueOf(Integer.parseInt(str.substring(4, 6), 16)), Integer.valueOf(Integer.parseInt(str.substring(6, 8), 16)), Integer.valueOf(paramInt) });
    a();
  }
  
  public void setTextSize(int paramInt) {
    this.d = paramInt;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\JustifiedTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */