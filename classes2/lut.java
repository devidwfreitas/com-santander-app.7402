import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import java.util.List;

public class lut extends PagerAdapter {
  private ImageView a;
  
  private ImageView b;
  
  private ImageView c;
  
  private List<kvu> d;
  
  private SinisterDetailActivity e;
  
  private int f;
  
  public lut(List<kvu> paramList, SinisterDetailActivity paramSinisterDetailActivity) {
    this.d = paramList;
    this.e = paramSinisterDetailActivity;
  }
  
  private void a(View paramView) {
    this.b = (ImageView)paramView.findViewById(2131756407);
    this.c = (ImageView)paramView.findViewById(2131756408);
  }
  
  private kvu b(int paramInt) {
    return this.d.get(paramInt);
  }
  
  public int a() {
    return this.f;
  }
  
  public void a(int paramInt) {
    this.f = paramInt;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.d.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: getfield e : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;
    //   4: invokevirtual getLayoutInflater : ()Landroid/view/LayoutInflater;
    //   7: ldc 2130968836
    //   9: aload_1
    //   10: iconst_0
    //   11: invokevirtual inflate : (ILandroid/view/ViewGroup;Z)Landroid/view/View;
    //   14: astore_3
    //   15: aload_0
    //   16: aload_3
    //   17: invokespecial a : (Landroid/view/View;)V
    //   20: aload_0
    //   21: iload_2
    //   22: invokespecial b : (I)Lkvu;
    //   25: astore #4
    //   27: aload #4
    //   29: invokevirtual b : ()Ljava/lang/String;
    //   32: invokestatic fromString : (Ljava/lang/String;)Lkvx;
    //   35: astore #5
    //   37: aload #5
    //   39: ifnull -> 93
    //   42: getstatic luu.a : [I
    //   45: aload #5
    //   47: invokevirtual ordinal : ()I
    //   50: iaload
    //   51: tableswitch default -> 84, 1 -> 213, 2 -> 225, 3 -> 237, 4 -> 249, 5 -> 261
    //   84: aload_0
    //   85: getfield b : Landroid/widget/ImageView;
    //   88: ldc 2130838381
    //   90: invokevirtual setImageResource : (I)V
    //   93: aload #4
    //   95: invokevirtual d : ()Z
    //   98: ifeq -> 273
    //   101: aload_0
    //   102: getfield c : Landroid/widget/ImageView;
    //   105: ldc 2130838384
    //   107: invokevirtual setImageResource : (I)V
    //   110: aload #4
    //   112: invokevirtual a : ()Z
    //   115: ifeq -> 285
    //   118: aload_0
    //   119: getfield c : Landroid/widget/ImageView;
    //   122: iconst_0
    //   123: invokevirtual setVisibility : (I)V
    //   126: iload_2
    //   127: aload_0
    //   128: invokevirtual a : ()I
    //   131: if_icmple -> 184
    //   134: aload_0
    //   135: getfield b : Landroid/widget/ImageView;
    //   138: invokevirtual getDrawable : ()Landroid/graphics/drawable/Drawable;
    //   141: invokevirtual mutate : ()Landroid/graphics/drawable/Drawable;
    //   144: astore #4
    //   146: aload #4
    //   148: aload_0
    //   149: getfield e : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;
    //   152: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   155: ldc 2131624078
    //   157: invokevirtual getColor : (I)I
    //   160: getstatic android/graphics/PorterDuff$Mode.SRC_IN : Landroid/graphics/PorterDuff$Mode;
    //   163: invokevirtual setColorFilter : (ILandroid/graphics/PorterDuff$Mode;)V
    //   166: aload_0
    //   167: getfield b : Landroid/widget/ImageView;
    //   170: aload #4
    //   172: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   175: aload_0
    //   176: getfield c : Landroid/widget/ImageView;
    //   179: bipush #8
    //   181: invokevirtual setVisibility : (I)V
    //   184: iload_2
    //   185: iconst_4
    //   186: if_icmpeq -> 197
    //   189: iload_2
    //   190: aload_0
    //   191: invokevirtual a : ()I
    //   194: if_icmple -> 206
    //   197: aload_0
    //   198: getfield c : Landroid/widget/ImageView;
    //   201: bipush #8
    //   203: invokevirtual setVisibility : (I)V
    //   206: aload_1
    //   207: aload_3
    //   208: invokevirtual addView : (Landroid/view/View;)V
    //   211: aload_3
    //   212: areturn
    //   213: aload_0
    //   214: getfield b : Landroid/widget/ImageView;
    //   217: ldc 2130838308
    //   219: invokevirtual setImageResource : (I)V
    //   222: goto -> 93
    //   225: aload_0
    //   226: getfield b : Landroid/widget/ImageView;
    //   229: ldc 2130838647
    //   231: invokevirtual setImageResource : (I)V
    //   234: goto -> 93
    //   237: aload_0
    //   238: getfield b : Landroid/widget/ImageView;
    //   241: ldc 2130838424
    //   243: invokevirtual setImageResource : (I)V
    //   246: goto -> 93
    //   249: aload_0
    //   250: getfield b : Landroid/widget/ImageView;
    //   253: ldc 2130838313
    //   255: invokevirtual setImageResource : (I)V
    //   258: goto -> 93
    //   261: aload_0
    //   262: getfield b : Landroid/widget/ImageView;
    //   265: ldc 2130838381
    //   267: invokevirtual setImageResource : (I)V
    //   270: goto -> 93
    //   273: aload_0
    //   274: getfield c : Landroid/widget/ImageView;
    //   277: ldc 2130838666
    //   279: invokevirtual setImageResource : (I)V
    //   282: goto -> 110
    //   285: aload_0
    //   286: getfield c : Landroid/widget/ImageView;
    //   289: bipush #8
    //   291: invokevirtual setVisibility : (I)V
    //   294: goto -> 126
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lut.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */