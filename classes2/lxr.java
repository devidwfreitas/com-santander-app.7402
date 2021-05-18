import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lxr extends DialogFragment {
  private static String a = "sinister-coverage-name";
  
  private List<kvq> b;
  
  private lud c;
  
  private lxv d;
  
  private FragmentActivity e;
  
  private TextView f;
  
  private RecyclerView g;
  
  private TextView h;
  
  private Button i;
  
  private Button j;
  
  private String k;
  
  private List<kvq> l;
  
  private List<kvq> a(List<kvq> paramList, String paramString) {
    ArrayList<kvq> arrayList = new ArrayList();
    for (int i = 0; i < paramList.size(); i++) {
      if (paramString.toLowerCase().contains(((kvq)paramList.get(i)).b().toLowerCase()))
        arrayList.add(paramList.get(i)); 
    } 
    return arrayList;
  }
  
  public static lxr a(String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString(a, paramString);
    lxr lxr1 = new lxr();
    lxr1.setArguments(bundle);
    return lxr1;
  }
  
  private void a(View paramView) {
    this.f = (TextView)paramView.findViewById(2131755283);
    this.g = (RecyclerView)paramView.findViewById(2131755284);
    this.h = (TextView)paramView.findViewById(2131755286);
    this.i = (Button)paramView.findViewById(2131755287);
    this.j = (Button)paramView.findViewById(2131755288);
    a();
  }
  
  private void a(List<kvq> paramList) {
    this.c = new lud(paramList);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)getActivity(), 1, false);
    this.g.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.g.setAdapter(this.c);
    this.c.a(new lxs(this, paramList));
  }
  
  private void b() {
    this.h.setText(getResources().getString(2131298822));
    c();
  }
  
  private void c() {
    boolean bool1;
    boolean bool2 = true;
    this.b = new ArrayList<kvq>(Arrays.asList((Object[])(new ejm()).a(mhj.a((Context)getActivity(), "jsons/sinister/sinisterAssistance.json"), kvq[].class)));
    this.l = a(this.b, this.k);
    if (this.l != null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.l.size() <= 0)
      bool2 = false; 
    if ((bool1 & bool2) != 0)
      a(this.l); 
  }
  
  public void a() {
    this.i.setOnClickListener(new lxt(this));
    this.j.setOnClickListener(new lxu(this));
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    this.e = getActivity();
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey(a))
      this.k = getArguments().getString(a); 
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968949, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
  
  public void onDestroyView() {
    super.onDestroyView();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */