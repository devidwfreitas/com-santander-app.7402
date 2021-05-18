import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import java.util.HashMap;
import java.util.List;

public class jov extends BaseExpandableListAdapter {
  private Context a;
  
  private List<jow> b;
  
  private HashMap<Integer, List<jow>> c;
  
  private Boolean d;
  
  public jov(Context paramContext, List<jow> paramList, HashMap<Integer, List<jow>> paramHashMap, Boolean paramBoolean) {
    this.a = paramContext;
    this.b = paramList;
    this.c = paramHashMap;
    this.d = paramBoolean;
  }
  
  public Object getChild(int paramInt1, int paramInt2) {
    return ((List)this.c.get(Integer.valueOf(paramInt1))).get(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2) {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    AlphaAnimation alphaAnimation1 = new AlphaAnimation(0.3F, 0.3F);
    AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0F, 1.0F);
    alphaAnimation2.setDuration(0L);
    alphaAnimation2.setFillAfter(true);
    alphaAnimation1.setDuration(0L);
    alphaAnimation1.setFillAfter(true);
    jow jow = (jow)getChild(paramInt1, paramInt2);
    String str = jow.d();
    View view = paramView;
    if (paramView == null)
      view = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969010, null); 
    ((TextView)view.findViewById(2131757140)).setText(str);
    if (jow.e() == 0) {
      view.setEnabled(false);
      view.startAnimation((Animation)alphaAnimation1);
      view.setClickable(true);
      return view;
    } 
    view.setEnabled(true);
    view.setClickable(false);
    view.startAnimation((Animation)alphaAnimation2);
    return view;
  }
  
  public int getChildrenCount(int paramInt) {
    return (this.c.get(Integer.valueOf(paramInt)) == null) ? 0 : ((List)this.c.get(Integer.valueOf(paramInt))).size();
  }
  
  public Object getGroup(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public int getGroupCount() {
    return this.b.size();
  }
  
  public long getGroupId(int paramInt) {
    return paramInt;
  }
  
  @SuppressLint({"NewApi"})
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: invokevirtual getGroup : (I)Ljava/lang/Object;
    //   5: checkcast jow
    //   8: astore #8
    //   10: aload #8
    //   12: invokevirtual d : ()Ljava/lang/String;
    //   15: astore #9
    //   17: aload #8
    //   19: invokevirtual k : ()I
    //   22: istore #6
    //   24: aload_3
    //   25: astore #7
    //   27: aload_3
    //   28: ifnonnull -> 47
    //   31: aload #4
    //   33: invokevirtual getContext : ()Landroid/content/Context;
    //   36: invokestatic from : (Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   39: ldc 2130969009
    //   41: aconst_null
    //   42: invokevirtual inflate : (ILandroid/view/ViewGroup;)Landroid/view/View;
    //   45: astore #7
    //   47: aload #7
    //   49: ldc 2131757135
    //   51: invokevirtual findViewById : (I)Landroid/view/View;
    //   54: checkcast android/widget/ImageView
    //   57: astore_3
    //   58: aload #7
    //   60: ldc 2131757139
    //   62: invokevirtual findViewById : (I)Landroid/view/View;
    //   65: checkcast android/widget/ImageView
    //   68: astore #4
    //   70: aload #7
    //   72: ldc 2131757136
    //   74: invokevirtual findViewById : (I)Landroid/view/View;
    //   77: checkcast android/widget/TextView
    //   80: astore #10
    //   82: aload #8
    //   84: invokevirtual c : ()Landroid/graphics/Bitmap;
    //   87: ifnull -> 204
    //   90: aload_3
    //   91: aload #8
    //   93: invokevirtual c : ()Landroid/graphics/Bitmap;
    //   96: invokevirtual setImageBitmap : (Landroid/graphics/Bitmap;)V
    //   99: aload #10
    //   101: aload #9
    //   103: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   106: aload #10
    //   108: iload #6
    //   110: invokevirtual setTextColor : (I)V
    //   113: aload #8
    //   115: invokevirtual e : ()I
    //   118: tableswitch default -> 136, 1 -> 216
    //   136: aload #7
    //   138: iconst_0
    //   139: invokevirtual setEnabled : (Z)V
    //   142: aload #7
    //   144: iconst_1
    //   145: invokevirtual setClickable : (Z)V
    //   148: aload #7
    //   150: ldc 0.3
    //   152: invokevirtual setAlpha : (F)V
    //   155: aload_0
    //   156: iload_1
    //   157: invokevirtual getChildrenCount : (I)I
    //   160: ifeq -> 244
    //   163: aload #8
    //   165: iload_2
    //   166: invokevirtual b : (Z)V
    //   169: iload_2
    //   170: ifeq -> 237
    //   173: fconst_0
    //   174: fstore #5
    //   176: aload #4
    //   178: fload #5
    //   180: invokevirtual setRotation : (F)V
    //   183: aload #4
    //   185: iconst_0
    //   186: invokevirtual setVisibility : (I)V
    //   189: aload #7
    //   191: ldc 2131757137
    //   193: invokevirtual findViewById : (I)Landroid/view/View;
    //   196: bipush #8
    //   198: invokevirtual setVisibility : (I)V
    //   201: aload #7
    //   203: areturn
    //   204: aload_3
    //   205: aload #8
    //   207: invokevirtual b : ()I
    //   210: invokevirtual setImageResource : (I)V
    //   213: goto -> 99
    //   216: aload #7
    //   218: iconst_1
    //   219: invokevirtual setEnabled : (Z)V
    //   222: aload #7
    //   224: iconst_0
    //   225: invokevirtual setClickable : (Z)V
    //   228: aload #7
    //   230: fconst_1
    //   231: invokevirtual setAlpha : (F)V
    //   234: goto -> 155
    //   237: ldc 180.0
    //   239: fstore #5
    //   241: goto -> 176
    //   244: aload #4
    //   246: bipush #8
    //   248: invokevirtual setVisibility : (I)V
    //   251: aload #8
    //   253: invokevirtual g : ()Ljox;
    //   256: getstatic jox.MENU_ITEM_PROPOSTAS_ABERTO : Ljox;
    //   259: invokevirtual equals : (Ljava/lang/Object;)Z
    //   262: ifeq -> 300
    //   265: aload #7
    //   267: ldc 2131757137
    //   269: invokevirtual findViewById : (I)Landroid/view/View;
    //   272: iconst_0
    //   273: invokevirtual setVisibility : (I)V
    //   276: aload #7
    //   278: ldc 2131757138
    //   280: invokevirtual findViewById : (I)Landroid/view/View;
    //   283: checkcast android/widget/TextView
    //   286: aload #8
    //   288: invokevirtual j : ()I
    //   291: invokestatic valueOf : (I)Ljava/lang/String;
    //   294: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   297: aload #7
    //   299: areturn
    //   300: aload #7
    //   302: ldc 2131757137
    //   304: invokevirtual findViewById : (I)Landroid/view/View;
    //   307: bipush #8
    //   309: invokevirtual setVisibility : (I)V
    //   312: aload #7
    //   314: areturn
  }
  
  public boolean hasStableIds() {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */