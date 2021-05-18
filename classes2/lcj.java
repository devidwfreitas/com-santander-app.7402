import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import java.util.ArrayList;
import java.util.List;

public class lcj extends Fragment implements lai, lbh {
  private ImageButton a;
  
  private RecyclerView b;
  
  private Button c;
  
  private lcm d;
  
  private lag e;
  
  private List<kom> f = new ArrayList<kom>();
  
  public static lcj a() {
    return new lcj();
  }
  
  private void a(View paramView) {
    this.a = (ImageButton)paramView.findViewById(2131757483);
    this.b = (RecyclerView)paramView.findViewById(2131757484);
    this.c = (Button)paramView.findViewById(2131757373);
  }
  
  private void b() {
    this.a.setOnClickListener(new lck(this));
    mhj.d((View)this.c);
    this.c.setOnClickListener(new lcl(this));
    this.b.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)getActivity()));
    this.e = new lag();
    this.e.a(this);
    this.b.setAdapter(this.e);
    if (this.f.size() > 0)
      this.e.a(this.f); 
  }
  
  private String c() {
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0; i < this.f.size(); i++) {
      stringBuilder.append(((kom)this.f.get(i)).toString());
      if (i != this.f.size() - 1)
        stringBuilder.append("; "); 
    } 
    return stringBuilder.toString().trim();
  }
  
  public void a(String paramString1, String paramString2, String paramString3) {
    mhj.e((View)this.c);
    this.b.setVisibility(0);
    this.f.add(new kom(paramString1, paramString2, paramString3));
    this.e.a(this.f);
  }
  
  public void a(kom paramkom) {
    this.f.remove(paramkom);
    this.e.a(this.f);
  }
  
  public void a(lcm paramlcm) {
    this.d = paramlcm;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969073, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lcj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */