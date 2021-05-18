package com.santander.app.lojaonline.domain;

import android.support.annotation.ColorInt;
import eks;
import java.util.List;
import jou;

public class LojaCampaign {
  @eks(a = "id")
  protected String a;
  
  @eks(a = "navigationBarText")
  protected String b;
  
  @eks(a = "titleText")
  protected String c;
  
  @eks(a = "titleColor")
  protected String d;
  
  @eks(a = "backgroundColor")
  protected String e;
  
  @eks(a = "seasonalCampaigns")
  protected List<LojaCampaign$Campaign> f;
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  @ColorInt
  public int d() {
    return jou.a(this.d, -16777216);
  }
  
  @ColorInt
  public int e() {
    return jou.a(this.e, -1);
  }
  
  public List<LojaCampaign$Campaign> f() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\lojaonline\domain\LojaCampaign.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */