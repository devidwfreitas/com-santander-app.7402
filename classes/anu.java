import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public class anu extends RecyclerView.Adapter<anw> {
  private ArrayList<anq> a;
  
  private ArrayList<anq> b;
  
  private View.OnClickListener c;
  
  public anu(ArrayList<anq> paramArrayList, View.OnClickListener paramOnClickListener) {
    this.a = paramArrayList;
    this.b = new ArrayList<anq>(paramArrayList);
    this.c = paramOnClickListener;
  }
  
  public anw a(ViewGroup paramViewGroup, int paramInt) {
    return new anw(LayoutInflater.from(paramViewGroup.getContext()).inflate(alu.santander_adapter_recycler_view, paramViewGroup, false));
  }
  
  public void a(anw paramanw, int paramInt) {
    anq anq = this.a.get(paramInt);
    if (anq.a() != null && !"".equalsIgnoreCase(anq.a())) {
      paramanw.a.setText(anq.a());
      paramanw.a.setVisibility(0);
    } 
    if (anq.b() != null && !"".equalsIgnoreCase(anq.b()))
      paramanw.b.setText(anq.b()); 
    paramanw.itemView.setOnClickListener(new anv(this, paramanw, paramInt));
  }
  
  public void a(String paramString, anp paramanp) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic getDefault : ()Ljava/util/Locale;
    //   4: invokevirtual toLowerCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   7: astore_1
    //   8: aload_0
    //   9: getfield a : Ljava/util/ArrayList;
    //   12: invokevirtual clear : ()V
    //   15: aload_1
    //   16: invokevirtual length : ()I
    //   19: ifne -> 55
    //   22: aload_0
    //   23: getfield a : Ljava/util/ArrayList;
    //   26: aload_0
    //   27: getfield b : Ljava/util/ArrayList;
    //   30: invokevirtual addAll : (Ljava/util/Collection;)Z
    //   33: pop
    //   34: aload_0
    //   35: invokevirtual notifyDataSetChanged : ()V
    //   38: aload_0
    //   39: getfield a : Ljava/util/ArrayList;
    //   42: invokevirtual size : ()I
    //   45: ifne -> 116
    //   48: aload_2
    //   49: invokeinterface a : ()V
    //   54: return
    //   55: aload_0
    //   56: getfield b : Ljava/util/ArrayList;
    //   59: invokevirtual iterator : ()Ljava/util/Iterator;
    //   62: astore_3
    //   63: aload_3
    //   64: invokeinterface hasNext : ()Z
    //   69: ifeq -> 34
    //   72: aload_3
    //   73: invokeinterface next : ()Ljava/lang/Object;
    //   78: checkcast anq
    //   81: astore #4
    //   83: aload #4
    //   85: invokeinterface b : ()Ljava/lang/String;
    //   90: invokestatic getDefault : ()Ljava/util/Locale;
    //   93: invokevirtual toLowerCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   96: aload_1
    //   97: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   100: ifeq -> 63
    //   103: aload_0
    //   104: getfield a : Ljava/util/ArrayList;
    //   107: aload #4
    //   109: invokevirtual add : (Ljava/lang/Object;)Z
    //   112: pop
    //   113: goto -> 63
    //   116: aload_2
    //   117: invokeinterface b : ()V
    //   122: return
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */