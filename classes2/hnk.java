import android.content.Context;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;
import android.support.v4.content.ContextCompat;

public class hnk {
  @StringRes
  private int a;
  
  @ColorRes
  private int b;
  
  @DrawableRes
  private int c;
  
  public hnk(hxl paramhxl) {
    if (paramhxl.b() == 1) {
      this.a = 2131298575;
      this.b = 2131624208;
      this.c = 2130838449;
      return;
    } 
    if (paramhxl.b() == 5) {
      this.a = 2131298576;
      this.b = 2131623961;
      this.c = 2130838447;
      return;
    } 
    if (paramhxl.b() == 2) {
      int i;
      if (paramhxl.f()) {
        i = 2131298584;
      } else {
        i = 2131298579;
      } 
      this.a = i;
      this.b = 2131623961;
      this.c = 2130838447;
      return;
    } 
    if (paramhxl.b() == 4) {
      int i;
      if (paramhxl.f()) {
        i = 2131298583;
      } else {
        i = 2131298578;
      } 
      this.a = i;
      this.b = 2131624204;
      this.c = 2130838446;
      return;
    } 
    if (paramhxl.b() == 7) {
      this.a = 2131298577;
      this.b = 2131623961;
      this.c = 2130838447;
      return;
    } 
    if (paramhxl.b() == 6) {
      this.a = 2131298582;
      this.b = 2131624208;
      this.c = 2130838449;
      return;
    } 
    if (paramhxl.b() == 3) {
      int i;
      if (paramhxl.f()) {
        i = 2131298585;
      } else {
        i = 2131298580;
      } 
      this.a = i;
      this.b = 2131623961;
      this.c = 2130838447;
      return;
    } 
    this.a = 2131298575;
    this.b = 2131624208;
    this.c = 2130838449;
  }
  
  @StringRes
  public int a() {
    return this.a;
  }
  
  public int a(Context paramContext) {
    return ContextCompat.getColor(paramContext, this.b);
  }
  
  @ColorRes
  public int b() {
    return this.b;
  }
  
  @DrawableRes
  public int c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */