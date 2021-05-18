import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class acr {
  private View a;
  
  protected List<View> b = new ArrayList<View>();
  
  private TextView c;
  
  private View d;
  
  private TextView e;
  
  private ImageButton f;
  
  private View g;
  
  private ack h;
  
  public acr(ack paramack) {
    this.h = paramack;
    a();
  }
  
  public acr(ack paramack, View paramView) {
    this.h = paramack;
    this.a = paramView;
    a();
  }
  
  private void a() {
    c();
    b();
  }
  
  private void a(Calendar paramCalendar) {
    paramCalendar.add(5, 2);
  }
  
  private void b() {
    View view;
    if (aca.a().b() != null) {
      View view1 = this.h.findViewById(la.header_main);
      view = view1;
      if (view1 == null) {
        view = view1;
        if (this.a != null)
          view = this.a.findViewById(la.header_main); 
      } 
      if (view != null) {
        switch (acx.a[aca.a().b().ordinal()]) {
          default:
            view.setBackgroundColor(this.h.getResources().getColor(kx.inv_header_defaut));
            return;
          case 1:
            view.setBackgroundColor(this.h.getResources().getColor(kx.inv_header_private));
            return;
          case 2:
            view.setBackgroundColor(this.h.getResources().getColor(kx.inv_header_select));
            return;
          case 3:
          case 4:
            break;
        } 
      } else {
        return;
      } 
    } else {
      return;
    } 
    view.setBackgroundColor(this.h.getResources().getColor(kx.inv_header_van_gogh));
  }
  
  private void b(Calendar paramCalendar) {
    paramCalendar.add(5, 1);
  }
  
  private void c() {
    if (this.a != null) {
      ImageButton imageButton = (ImageButton)this.a.findViewById(la.error_dismiss);
      this.c = (TextView)this.a.findViewById(la.error_msg);
      this.d = this.a.findViewById(la.error_yellow);
      if (imageButton != null)
        imageButton.setOnClickListener(new acs(this)); 
      this.f = (ImageButton)this.a.findViewById(la.msg_dismiss);
      this.e = (TextView)this.a.findViewById(la.msg_msg);
      this.g = this.a.findViewById(la.success_green);
      if (this.f != null)
        this.f.setOnClickListener(new act(this)); 
      return;
    } 
    if ((ImageButton)e().findViewById(la.error_dismiss) != null) {
      ImageButton imageButton = (ImageButton)e().findViewById(la.error_dismiss);
      this.c = (TextView)e().findViewById(la.error_msg);
      this.d = e().findViewById(la.error_yellow);
      imageButton.setOnClickListener(new acu(this));
    } 
    this.f = (ImageButton)e().findViewById(la.msg_dismiss);
    if (this.f != null) {
      this.f = (ImageButton)e().findViewById(la.msg_dismiss);
      this.e = (TextView)e().findViewById(la.msg_msg);
      this.g = e().findViewById(la.success_green);
      this.f.setOnClickListener(new acv(this));
      return;
    } 
  }
  
  public String a(int paramInt, Object... paramVarArgs) {
    return this.h.getString(paramInt, paramVarArgs);
  }
  
  protected Calendar a(@NonNull Calendar paramCalendar, @Nullable Integer paramInteger) {
    boolean bool1;
    boolean bool2 = true;
    if (aca.a().a(paramCalendar))
      b(paramCalendar); 
    if (paramInteger != null && paramInteger.intValue() > 0 && paramCalendar.get(11) > paramInteger.intValue()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (bool1)
      b(paramCalendar); 
    if (paramCalendar.get(7) == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (paramCalendar.get(7) != 7)
      bool2 = false; 
    if (bool2) {
      a(paramCalendar);
      return paramCalendar;
    } 
    if (bool1) {
      b(paramCalendar);
      return paramCalendar;
    } 
    return paramCalendar;
  }
  
  public void a(int paramInt) {
    a(this.h.getResources().getString(paramInt));
  }
  
  protected void a(View paramView) {
    ((InputMethodManager)e().getSystemService("input_method")).showSoftInput(paramView, 1);
  }
  
  public void a(String paramString) {
    if (this.c != null) {
      this.c.setText(paramString);
      this.d.setVisibility(0);
    } 
  }
  
  protected void a(tj paramtj) {
    (new te((Context)e())).a(c(aca.a().b().toString()), paramtj);
  }
  
  protected void a(View... paramVarArgs) {
    this.b.add(paramVarArgs[0]);
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      View view = paramVarArgs[i];
      if (view instanceof TextView) {
        ((TextView)view).setTextColor(e().getResources().getColor(kx.inv_red_three));
      } else {
        view.setBackgroundColor(e().getResources().getColor(kx.inv_red_three));
      } 
    } 
  }
  
  protected boolean a(String paramString, Double paramDouble1, Double paramDouble2) {
    try {
      double d1;
      double d2;
      Double double_ = Double.valueOf(paramString);
      if (paramDouble2 == null) {
        d1 = Double.MAX_VALUE;
      } else {
        d1 = paramDouble2.doubleValue();
      } 
      if (paramDouble1 == null) {
        d2 = 0.0D;
      } else {
        d2 = paramDouble1.doubleValue();
      } 
      if (double_.doubleValue() >= Double.valueOf(d2).doubleValue() && double_.doubleValue() <= Double.valueOf(d1).doubleValue())
        return true; 
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    return false;
  }
  
  public int b(int paramInt) {
    return this.h.getResources().getColor(paramInt);
  }
  
  public void b(View paramView) {
    ((InputMethodManager)e().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  protected void b(String paramString) {
    this.f = (ImageButton)e().findViewById(la.msg_dismiss);
    if (this.f != null) {
      this.f = (ImageButton)e().findViewById(la.msg_dismiss);
      this.e = (TextView)e().findViewById(la.msg_msg);
      this.g = e().findViewById(la.success_green);
      this.f.setOnClickListener(new acw(this));
    } 
    if (this.e != null) {
      this.e.setText(paramString);
      this.g.setVisibility(0);
    } 
  }
  
  protected void b(View... paramVarArgs) {
    this.b.remove(paramVarArgs[0]);
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      View view = paramVarArgs[i];
      if (view instanceof TextView) {
        if (((TextView)view).getText().toString().contains(":")) {
          ((TextView)view).setTextColor(e().getResources().getColor(kx.inv_warm_grey));
        } else {
          ((TextView)view).setTextColor(e().getResources().getColor(kx.inv_brownish_grey));
        } 
      } else {
        view.setBackgroundColor(e().getResources().getColor(kx.inv_pinkish_grey));
      } 
    } 
  }
  
  public Drawable c(int paramInt) {
    return e().getResources().getDrawable(paramInt);
  }
  
  protected String c(String paramString) {
    try {
      return ji.a().f(paramString);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public ack e() {
    return this.h;
  }
  
  protected boolean f() {
    return this.b.isEmpty();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\acr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */