import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class vf extends RecyclerView.Adapter<vh> {
  private static final String a = "7";
  
  private static final String b = "3";
  
  private static final String c = "8";
  
  private List<uz> d;
  
  private Context e;
  
  public vf(Context paramContext, List<uz> paramList) {
    this.e = paramContext;
    for (uz uz : paramList) {
      if (uz.e() != null)
        Collections.sort(uz.e()); 
    } 
    this.d = paramList;
  }
  
  private List<ve> a(int paramInt) {
    ArrayList<ve> arrayList = new ArrayList();
    if (((uz)this.d.get(paramInt)).e().isEmpty()) {
      String str = ((uz)this.d.get(paramInt)).c();
      byte b2 = -1;
      byte b1 = b2;
      switch (str.hashCode()) {
        default:
          b1 = b2;
        case 52:
        case 53:
        case 54:
          switch (b1) {
            default:
              this.d.remove(this.d.get(paramInt));
              return arrayList;
            case 0:
            case 1:
              arrayList.add(new ve());
              return arrayList;
            case 2:
              break;
          } 
          arrayList.add(new ve("TESOURO DIRETO"));
          arrayList.add(new ve("AÇÕES"));
          arrayList.add(new ve("DEBÊNTURES, FUNDOS IMOBILIÁRIOS, ENTRE OUTROS"));
          return arrayList;
        case 55:
          b1 = b2;
          if (str.equals("7"))
            b1 = 0; 
        case 51:
          b1 = b2;
          if (str.equals("3"))
            b1 = 1; 
        case 56:
          break;
      } 
      b1 = b2;
      if (str.equals("8"))
        b1 = 2; 
    } 
    arrayList.addAll(((uz)this.d.get(paramInt)).e());
    return arrayList;
  }
  
  private boolean a(uz paramuz) {
    return (paramuz.c() != null && !paramuz.c().equalsIgnoreCase("8") && !paramuz.c().equalsIgnoreCase("3") && !paramuz.c().equalsIgnoreCase("7"));
  }
  
  public vh a(ViewGroup paramViewGroup, int paramInt) {
    return new vh(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_listagem_subproduto_familia, paramViewGroup, false));
  }
  
  public void a(vh paramvh, int paramInt) {
    uz uz = this.d.get(paramInt);
    paramvh.a.setText(uz.a());
    Iterator<ve> iterator = uz.e().iterator();
    Integer integer = Integer.valueOf(0);
    while (iterator.hasNext()) {
      if (((ve)iterator.next()).k().booleanValue())
        integer = Integer.valueOf(integer.intValue() + 1); 
    } 
    if (uz.e().size() > 3 && a(uz)) {
      paramvh.b.setVisibility(0);
      paramvh.b.setPaintFlags(paramvh.b.getPaintFlags() | 0x8);
      paramvh.b.setOnClickListener(new vg(this, paramInt, uz));
    } else {
      paramvh.b.setVisibility(8);
    } 
    paramvh.c.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager(this.e));
    paramvh.c.setAdapter(new vi(this.e, this.d.get(paramInt), a(paramInt), false));
    paramvh.c.setNestedScrollingEnabled(false);
  }
  
  public int getItemCount() {
    return this.d.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */