import android.view.View;
import android.widget.TextView;
import java.util.List;

class ndl implements View.OnClickListener {
  ndl(ndk paramndk, List paramList) {}
  
  public void onClick(View paramView) {
    String str = ((TextView)paramView.findViewById(2131756165)).getText().toString();
    if (str.equals(this.a.get(0))) {
      if ((new ndy()).b(ndk.a(this.b))) {
        ndk.b(this.b).b();
        return;
      } 
      ndk.b(this.b).c();
      return;
    } 
    if (str.equals(this.a.get(1))) {
      ndk.b(this.b).a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */