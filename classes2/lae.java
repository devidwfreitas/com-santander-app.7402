import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import java.util.List;

public class lae extends PagerAdapter {
  private Context a;
  
  private ImageButton b;
  
  private ViewPager c;
  
  private List<kps> d;
  
  public lae(Context paramContext, List<kps> paramList) {
    this.a = paramContext;
    this.d = paramList;
  }
  
  private Drawable a(String paramString) {
    // Byte code:
    //   0: ldc 2130838422
    //   2: istore_3
    //   3: aload_1
    //   4: invokevirtual hashCode : ()I
    //   7: lookupswitch default -> 160, 50552 -> 310, 50553 -> 282, 50583 -> 338, 50702 -> 396, 51792 -> 296, 52471 -> 324, 52535 -> 352, 56313 -> 411, 56314 -> 426, 56315 -> 381, 56316 -> 441, 56318 -> 456, 56319 -> 471, 56320 -> 486, 56321 -> 501, 56322 -> 531, 56346 -> 516, 56593 -> 366
    //   160: iconst_m1
    //   161: istore_2
    //   162: iload_2
    //   163: tableswitch default -> 248, 0 -> 546, 1 -> 552, 2 -> 558, 3 -> 564, 4 -> 570, 5 -> 576, 6 -> 582, 7 -> 588, 8 -> 594, 9 -> 600, 10 -> 600, 11 -> 606, 12 -> 606, 13 -> 606, 14 -> 606, 15 -> 250, 16 -> 250, 17 -> 612
    //   248: iconst_m1
    //   249: istore_3
    //   250: iload_3
    //   251: iconst_m1
    //   252: if_icmpeq -> 618
    //   255: aload_0
    //   256: getfield a : Landroid/content/Context;
    //   259: iload_3
    //   260: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   263: invokevirtual mutate : ()Landroid/graphics/drawable/Drawable;
    //   266: astore_1
    //   267: aload_1
    //   268: aload_0
    //   269: getfield a : Landroid/content/Context;
    //   272: ldc 2131624057
    //   274: invokestatic getColor : (Landroid/content/Context;I)I
    //   277: invokestatic setTint : (Landroid/graphics/drawable/Drawable;I)V
    //   280: aload_1
    //   281: areturn
    //   282: aload_1
    //   283: ldc '306'
    //   285: invokevirtual equals : (Ljava/lang/Object;)Z
    //   288: ifeq -> 160
    //   291: iconst_0
    //   292: istore_2
    //   293: goto -> 162
    //   296: aload_1
    //   297: ldc '495'
    //   299: invokevirtual equals : (Ljava/lang/Object;)Z
    //   302: ifeq -> 160
    //   305: iconst_1
    //   306: istore_2
    //   307: goto -> 162
    //   310: aload_1
    //   311: ldc '305'
    //   313: invokevirtual equals : (Ljava/lang/Object;)Z
    //   316: ifeq -> 160
    //   319: iconst_2
    //   320: istore_2
    //   321: goto -> 162
    //   324: aload_1
    //   325: ldc '502'
    //   327: invokevirtual equals : (Ljava/lang/Object;)Z
    //   330: ifeq -> 160
    //   333: iconst_3
    //   334: istore_2
    //   335: goto -> 162
    //   338: aload_1
    //   339: ldc '315'
    //   341: invokevirtual equals : (Ljava/lang/Object;)Z
    //   344: ifeq -> 160
    //   347: iconst_4
    //   348: istore_2
    //   349: goto -> 162
    //   352: aload_1
    //   353: ldc '524'
    //   355: invokevirtual equals : (Ljava/lang/Object;)Z
    //   358: ifeq -> 160
    //   361: iconst_5
    //   362: istore_2
    //   363: goto -> 162
    //   366: aload_1
    //   367: ldc '991'
    //   369: invokevirtual equals : (Ljava/lang/Object;)Z
    //   372: ifeq -> 160
    //   375: bipush #6
    //   377: istore_2
    //   378: goto -> 162
    //   381: aload_1
    //   382: ldc '902'
    //   384: invokevirtual equals : (Ljava/lang/Object;)Z
    //   387: ifeq -> 160
    //   390: bipush #7
    //   392: istore_2
    //   393: goto -> 162
    //   396: aload_1
    //   397: ldc '350'
    //   399: invokevirtual equals : (Ljava/lang/Object;)Z
    //   402: ifeq -> 160
    //   405: bipush #8
    //   407: istore_2
    //   408: goto -> 162
    //   411: aload_1
    //   412: ldc '900'
    //   414: invokevirtual equals : (Ljava/lang/Object;)Z
    //   417: ifeq -> 160
    //   420: bipush #9
    //   422: istore_2
    //   423: goto -> 162
    //   426: aload_1
    //   427: ldc '901'
    //   429: invokevirtual equals : (Ljava/lang/Object;)Z
    //   432: ifeq -> 160
    //   435: bipush #10
    //   437: istore_2
    //   438: goto -> 162
    //   441: aload_1
    //   442: ldc '903'
    //   444: invokevirtual equals : (Ljava/lang/Object;)Z
    //   447: ifeq -> 160
    //   450: bipush #11
    //   452: istore_2
    //   453: goto -> 162
    //   456: aload_1
    //   457: ldc '905'
    //   459: invokevirtual equals : (Ljava/lang/Object;)Z
    //   462: ifeq -> 160
    //   465: bipush #12
    //   467: istore_2
    //   468: goto -> 162
    //   471: aload_1
    //   472: ldc '906'
    //   474: invokevirtual equals : (Ljava/lang/Object;)Z
    //   477: ifeq -> 160
    //   480: bipush #13
    //   482: istore_2
    //   483: goto -> 162
    //   486: aload_1
    //   487: ldc '907'
    //   489: invokevirtual equals : (Ljava/lang/Object;)Z
    //   492: ifeq -> 160
    //   495: bipush #14
    //   497: istore_2
    //   498: goto -> 162
    //   501: aload_1
    //   502: ldc '908'
    //   504: invokevirtual equals : (Ljava/lang/Object;)Z
    //   507: ifeq -> 160
    //   510: bipush #15
    //   512: istore_2
    //   513: goto -> 162
    //   516: aload_1
    //   517: ldc '912'
    //   519: invokevirtual equals : (Ljava/lang/Object;)Z
    //   522: ifeq -> 160
    //   525: bipush #16
    //   527: istore_2
    //   528: goto -> 162
    //   531: aload_1
    //   532: ldc '909'
    //   534: invokevirtual equals : (Ljava/lang/Object;)Z
    //   537: ifeq -> 160
    //   540: bipush #17
    //   542: istore_2
    //   543: goto -> 162
    //   546: ldc 2130838438
    //   548: istore_3
    //   549: goto -> 250
    //   552: ldc 2130838509
    //   554: istore_3
    //   555: goto -> 250
    //   558: ldc 2130838526
    //   560: istore_3
    //   561: goto -> 250
    //   564: ldc 2130838390
    //   566: istore_3
    //   567: goto -> 250
    //   570: ldc 2130838502
    //   572: istore_3
    //   573: goto -> 250
    //   576: ldc 2130838529
    //   578: istore_3
    //   579: goto -> 250
    //   582: ldc 2130838500
    //   584: istore_3
    //   585: goto -> 250
    //   588: ldc 2130838594
    //   590: istore_3
    //   591: goto -> 250
    //   594: ldc 2130838680
    //   596: istore_3
    //   597: goto -> 250
    //   600: ldc 2130838507
    //   602: istore_3
    //   603: goto -> 250
    //   606: ldc 2130838519
    //   608: istore_3
    //   609: goto -> 250
    //   612: ldc 2130838427
    //   614: istore_3
    //   615: goto -> 250
    //   618: aload_0
    //   619: getfield a : Landroid/content/Context;
    //   622: ldc 2130838329
    //   624: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   627: invokevirtual mutate : ()Landroid/graphics/drawable/Drawable;
    //   630: areturn
  }
  
  public void a(ViewPager paramViewPager) {
    this.c = paramViewPager;
    paramViewPager.addOnPageChangeListener(new laf(this, paramViewPager));
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.d.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130968834, paramViewGroup, false);
    kps kps = this.d.get(paramInt);
    this.b = (ImageButton)view.findViewById(2131756405);
    Drawable drawable = a(kps.a());
    if (drawable != null) {
      if (this.c == null) {
        if (paramInt == 0)
          drawable.setTint(ContextCompat.getColor(this.a, 2131624043)); 
      } else if (paramInt == this.c.getCurrentItem()) {
        drawable.setTint(ContextCompat.getColor(this.a, 2131624043));
      } 
      this.b.setImageDrawable(drawable);
    } 
    this.b.setTag("view" + paramInt);
    paramViewGroup.addView(view);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */