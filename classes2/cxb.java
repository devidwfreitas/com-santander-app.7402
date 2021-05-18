import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.LinkedList;

public abstract class cxb<T extends cxa> {
  private T a;
  
  private Bundle b;
  
  private LinkedList<cxj> c;
  
  private final cxp<T> d = new cxc(this);
  
  private void a(int paramInt) {
    while (!this.c.isEmpty() && ((cxj)this.c.getLast()).a() >= paramInt)
      this.c.removeLast(); 
  }
  
  private void a(Bundle paramBundle, cxj paramcxj) {
    if (this.a != null) {
      paramcxj.a((cxa)this.a);
      return;
    } 
    if (this.c == null)
      this.c = new LinkedList<cxj>(); 
    this.c.add(paramcxj);
    if (paramBundle != null)
      if (this.b == null) {
        this.b = (Bundle)paramBundle.clone();
      } else {
        this.b.putAll(paramBundle);
      }  
    a(this.d);
  }
  
  @VisibleForTesting
  static void a(FrameLayout paramFrameLayout, con paramcon) {
    Context context = paramFrameLayout.getContext();
    int i = paramcon.a(context);
    String str2 = ctp.c(context, i);
    String str1 = ctp.e(context, i);
    LinearLayout linearLayout = new LinearLayout(paramFrameLayout.getContext());
    linearLayout.setOrientation(1);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.addView((View)linearLayout);
    TextView textView = new TextView(paramFrameLayout.getContext());
    textView.setLayoutParams((ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-2, -2));
    textView.setText(str2);
    linearLayout.addView((View)textView);
    Intent intent = paramcon.b(context, i, null);
    if (intent != null) {
      Button button = new Button(context);
      button.setId(16908313);
      button.setLayoutParams((ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-2, -2));
      button.setText(str1);
      linearLayout.addView((View)button);
      button.setOnClickListener(new cxg(context, intent));
    } 
  }
  
  public static void b(FrameLayout paramFrameLayout) {
    a(paramFrameLayout, con.a());
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    FrameLayout frameLayout = new FrameLayout(paramLayoutInflater.getContext());
    a(paramBundle, new cxf(this, frameLayout, paramLayoutInflater, paramViewGroup, paramBundle));
    if (this.a == null)
      a(frameLayout); 
    return (View)frameLayout;
  }
  
  public T a() {
    return this.a;
  }
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2) {
    a(paramBundle2, new cxd(this, paramActivity, paramBundle1, paramBundle2));
  }
  
  public void a(Bundle paramBundle) {
    a(paramBundle, new cxe(this, paramBundle));
  }
  
  protected void a(FrameLayout paramFrameLayout) {
    b(paramFrameLayout);
  }
  
  protected abstract void a(cxp<T> paramcxp);
  
  public void b() {
    a((Bundle)null, new cxh(this));
  }
  
  public void b(Bundle paramBundle) {
    if (this.a != null) {
      this.a.b(paramBundle);
      return;
    } 
    if (this.b != null) {
      paramBundle.putAll(this.b);
      return;
    } 
  }
  
  public void c() {
    a((Bundle)null, new cxi(this));
  }
  
  public void d() {
    if (this.a != null) {
      this.a.c();
      return;
    } 
    a(5);
  }
  
  public void e() {
    if (this.a != null) {
      this.a.d();
      return;
    } 
    a(4);
  }
  
  public void f() {
    if (this.a != null) {
      this.a.e();
      return;
    } 
    a(2);
  }
  
  public void g() {
    if (this.a != null) {
      this.a.f();
      return;
    } 
    a(1);
  }
  
  public void h() {
    if (this.a != null)
      this.a.g(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */