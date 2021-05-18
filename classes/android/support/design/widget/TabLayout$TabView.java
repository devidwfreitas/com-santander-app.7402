package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.content.res.AppCompatResources;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

class TabLayout$TabView extends LinearLayout implements View.OnLongClickListener {
  private ImageView mCustomIconView;
  
  private TextView mCustomTextView;
  
  private View mCustomView;
  
  private int mDefaultMaxLines = 2;
  
  private ImageView mIconView;
  
  private TabLayout$Tab mTab;
  
  private TextView mTextView;
  
  public TabLayout$TabView(Context paramContext) {
    super(paramContext);
    if (paramTabLayout.mTabBackgroundResId != 0)
      ViewCompat.setBackground((View)this, AppCompatResources.getDrawable(paramContext, paramTabLayout.mTabBackgroundResId)); 
    ViewCompat.setPaddingRelative((View)this, paramTabLayout.mTabPaddingStart, paramTabLayout.mTabPaddingTop, paramTabLayout.mTabPaddingEnd, paramTabLayout.mTabPaddingBottom);
    setGravity(17);
    setOrientation(1);
    setClickable(true);
    ViewCompat.setPointerIcon((View)this, PointerIconCompat.getSystemIcon(getContext(), 1002));
  }
  
  private float approximateLineWidth(Layout paramLayout, int paramInt, float paramFloat) {
    return paramLayout.getLineWidth(paramInt) * paramFloat / paramLayout.getPaint().getTextSize();
  }
  
  private void updateTextAndIcon(@Nullable TextView paramTextView, @Nullable ImageView paramImageView) {
    boolean bool;
    Drawable drawable;
    CharSequence charSequence1;
    CharSequence charSequence2;
    if (this.mTab != null) {
      drawable = this.mTab.getIcon();
    } else {
      drawable = null;
    } 
    if (this.mTab != null) {
      charSequence1 = this.mTab.getText();
    } else {
      charSequence1 = null;
    } 
    if (this.mTab != null) {
      charSequence2 = this.mTab.getContentDescription();
    } else {
      charSequence2 = null;
    } 
    if (paramImageView != null) {
      if (drawable != null) {
        paramImageView.setImageDrawable(drawable);
        paramImageView.setVisibility(0);
        setVisibility(0);
      } else {
        paramImageView.setVisibility(8);
        paramImageView.setImageDrawable(null);
      } 
      paramImageView.setContentDescription(charSequence2);
    } 
    if (!TextUtils.isEmpty(charSequence1)) {
      bool = true;
    } else {
      bool = false;
    } 
    if (paramTextView != null) {
      if (bool) {
        paramTextView.setText(charSequence1);
        paramTextView.setVisibility(0);
        setVisibility(0);
      } else {
        paramTextView.setVisibility(8);
        paramTextView.setText(null);
      } 
      paramTextView.setContentDescription(charSequence2);
    } 
    if (paramImageView != null) {
      boolean bool1;
      ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)paramImageView.getLayoutParams();
      if (bool && paramImageView.getVisibility() == 0) {
        bool1 = TabLayout.this.dpToPx(8);
      } else {
        bool1 = false;
      } 
      if (bool1 != marginLayoutParams.bottomMargin) {
        marginLayoutParams.bottomMargin = bool1;
        paramImageView.requestLayout();
      } 
    } 
    if (!bool && !TextUtils.isEmpty(charSequence2)) {
      setOnLongClickListener(this);
      return;
    } 
    setOnLongClickListener(null);
    setLongClickable(false);
  }
  
  public TabLayout$Tab getTab() {
    return this.mTab;
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ActionBar.Tab.class.getName());
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
  }
  
  public boolean onLongClick(View paramView) {
    int[] arrayOfInt = new int[2];
    Rect rect = new Rect();
    getLocationOnScreen(arrayOfInt);
    getWindowVisibleDisplayFrame(rect);
    Context context = getContext();
    int i = getWidth();
    int k = getHeight();
    int m = arrayOfInt[1];
    int n = k / 2;
    int j = arrayOfInt[0];
    j = i / 2 + j;
    i = j;
    if (ViewCompat.getLayoutDirection(paramView) == 0)
      i = (context.getResources().getDisplayMetrics()).widthPixels - j; 
    Toast toast = Toast.makeText(context, this.mTab.getContentDescription(), 0);
    if (m + n < rect.height()) {
      toast.setGravity(8388661, i, arrayOfInt[1] + k - rect.top);
      toast.show();
      return true;
    } 
    toast.setGravity(81, 0, k);
    toast.show();
    return true;
  }
  
  public void onMeasure(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #7
    //   3: iload_1
    //   4: invokestatic getSize : (I)I
    //   7: istore #6
    //   9: iload_1
    //   10: invokestatic getMode : (I)I
    //   13: istore #8
    //   15: aload_0
    //   16: getfield this$0 : Landroid/support/design/widget/TabLayout;
    //   19: invokevirtual getTabMaxWidth : ()I
    //   22: istore #9
    //   24: iload_1
    //   25: istore #5
    //   27: iload #9
    //   29: ifle -> 62
    //   32: iload #8
    //   34: ifeq -> 47
    //   37: iload_1
    //   38: istore #5
    //   40: iload #6
    //   42: iload #9
    //   44: if_icmple -> 62
    //   47: aload_0
    //   48: getfield this$0 : Landroid/support/design/widget/TabLayout;
    //   51: getfield mTabMaxWidth : I
    //   54: ldc_w -2147483648
    //   57: invokestatic makeMeasureSpec : (II)I
    //   60: istore #5
    //   62: aload_0
    //   63: iload #5
    //   65: iload_2
    //   66: invokespecial onMeasure : (II)V
    //   69: aload_0
    //   70: getfield mTextView : Landroid/widget/TextView;
    //   73: ifnull -> 276
    //   76: aload_0
    //   77: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   80: pop
    //   81: aload_0
    //   82: getfield this$0 : Landroid/support/design/widget/TabLayout;
    //   85: getfield mTabTextSize : F
    //   88: fstore #4
    //   90: aload_0
    //   91: getfield mDefaultMaxLines : I
    //   94: istore #6
    //   96: aload_0
    //   97: getfield mIconView : Landroid/widget/ImageView;
    //   100: ifnull -> 277
    //   103: aload_0
    //   104: getfield mIconView : Landroid/widget/ImageView;
    //   107: invokevirtual getVisibility : ()I
    //   110: ifne -> 277
    //   113: iconst_1
    //   114: istore_1
    //   115: fload #4
    //   117: fstore_3
    //   118: aload_0
    //   119: getfield mTextView : Landroid/widget/TextView;
    //   122: invokevirtual getTextSize : ()F
    //   125: fstore #4
    //   127: aload_0
    //   128: getfield mTextView : Landroid/widget/TextView;
    //   131: invokevirtual getLineCount : ()I
    //   134: istore #8
    //   136: aload_0
    //   137: getfield mTextView : Landroid/widget/TextView;
    //   140: invokestatic getMaxLines : (Landroid/widget/TextView;)I
    //   143: istore #6
    //   145: fload_3
    //   146: fload #4
    //   148: fcmpl
    //   149: ifne -> 163
    //   152: iload #6
    //   154: iflt -> 276
    //   157: iload_1
    //   158: iload #6
    //   160: if_icmpeq -> 276
    //   163: iload #7
    //   165: istore #6
    //   167: aload_0
    //   168: getfield this$0 : Landroid/support/design/widget/TabLayout;
    //   171: getfield mMode : I
    //   174: iconst_1
    //   175: if_icmpne -> 247
    //   178: iload #7
    //   180: istore #6
    //   182: fload_3
    //   183: fload #4
    //   185: fcmpl
    //   186: ifle -> 247
    //   189: iload #7
    //   191: istore #6
    //   193: iload #8
    //   195: iconst_1
    //   196: if_icmpne -> 247
    //   199: aload_0
    //   200: getfield mTextView : Landroid/widget/TextView;
    //   203: invokevirtual getLayout : ()Landroid/text/Layout;
    //   206: astore #10
    //   208: aload #10
    //   210: ifnull -> 244
    //   213: iload #7
    //   215: istore #6
    //   217: aload_0
    //   218: aload #10
    //   220: iconst_0
    //   221: fload_3
    //   222: invokespecial approximateLineWidth : (Landroid/text/Layout;IF)F
    //   225: aload_0
    //   226: invokevirtual getMeasuredWidth : ()I
    //   229: aload_0
    //   230: invokevirtual getPaddingLeft : ()I
    //   233: isub
    //   234: aload_0
    //   235: invokevirtual getPaddingRight : ()I
    //   238: isub
    //   239: i2f
    //   240: fcmpl
    //   241: ifle -> 247
    //   244: iconst_0
    //   245: istore #6
    //   247: iload #6
    //   249: ifeq -> 276
    //   252: aload_0
    //   253: getfield mTextView : Landroid/widget/TextView;
    //   256: iconst_0
    //   257: fload_3
    //   258: invokevirtual setTextSize : (IF)V
    //   261: aload_0
    //   262: getfield mTextView : Landroid/widget/TextView;
    //   265: iload_1
    //   266: invokevirtual setMaxLines : (I)V
    //   269: aload_0
    //   270: iload #5
    //   272: iload_2
    //   273: invokespecial onMeasure : (II)V
    //   276: return
    //   277: iload #6
    //   279: istore_1
    //   280: fload #4
    //   282: fstore_3
    //   283: aload_0
    //   284: getfield mTextView : Landroid/widget/TextView;
    //   287: ifnull -> 118
    //   290: iload #6
    //   292: istore_1
    //   293: fload #4
    //   295: fstore_3
    //   296: aload_0
    //   297: getfield mTextView : Landroid/widget/TextView;
    //   300: invokevirtual getLineCount : ()I
    //   303: iconst_1
    //   304: if_icmple -> 118
    //   307: aload_0
    //   308: getfield this$0 : Landroid/support/design/widget/TabLayout;
    //   311: getfield mTabTextMultiLineSize : F
    //   314: fstore_3
    //   315: iload #6
    //   317: istore_1
    //   318: goto -> 118
  }
  
  public boolean performClick() {
    boolean bool2 = super.performClick();
    boolean bool1 = bool2;
    if (this.mTab != null) {
      if (!bool2)
        playSoundEffect(0); 
      this.mTab.select();
      bool1 = true;
    } 
    return bool1;
  }
  
  void reset() {
    setTab((TabLayout$Tab)null);
    setSelected(false);
  }
  
  public void setSelected(boolean paramBoolean) {
    boolean bool;
    if (isSelected() != paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    super.setSelected(paramBoolean);
    if (bool && paramBoolean && Build.VERSION.SDK_INT < 16)
      sendAccessibilityEvent(4); 
    if (this.mTextView != null)
      this.mTextView.setSelected(paramBoolean); 
    if (this.mIconView != null)
      this.mIconView.setSelected(paramBoolean); 
    if (this.mCustomView != null)
      this.mCustomView.setSelected(paramBoolean); 
  }
  
  void setTab(@Nullable TabLayout$Tab paramTabLayout$Tab) {
    if (paramTabLayout$Tab != this.mTab) {
      this.mTab = paramTabLayout$Tab;
      update();
    } 
  }
  
  final void update() {
    boolean bool;
    View view;
    TabLayout$Tab tabLayout$Tab = this.mTab;
    if (tabLayout$Tab != null) {
      view = tabLayout$Tab.getCustomView();
    } else {
      view = null;
    } 
    if (view != null) {
      ViewParent viewParent = view.getParent();
      if (viewParent != this) {
        if (viewParent != null)
          ((ViewGroup)viewParent).removeView(view); 
        addView(view);
      } 
      this.mCustomView = view;
      if (this.mTextView != null)
        this.mTextView.setVisibility(8); 
      if (this.mIconView != null) {
        this.mIconView.setVisibility(8);
        this.mIconView.setImageDrawable(null);
      } 
      this.mCustomTextView = (TextView)view.findViewById(16908308);
      if (this.mCustomTextView != null)
        this.mDefaultMaxLines = TextViewCompat.getMaxLines(this.mCustomTextView); 
      this.mCustomIconView = (ImageView)view.findViewById(16908294);
    } else {
      if (this.mCustomView != null) {
        removeView(this.mCustomView);
        this.mCustomView = null;
      } 
      this.mCustomTextView = null;
      this.mCustomIconView = null;
    } 
    if (this.mCustomView == null) {
      if (this.mIconView == null) {
        ImageView imageView = (ImageView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup)this, false);
        addView((View)imageView, 0);
        this.mIconView = imageView;
      } 
      if (this.mTextView == null) {
        TextView textView = (TextView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup)this, false);
        addView((View)textView);
        this.mTextView = textView;
        this.mDefaultMaxLines = TextViewCompat.getMaxLines(this.mTextView);
      } 
      TextViewCompat.setTextAppearance(this.mTextView, TabLayout.this.mTabTextAppearance);
      if (TabLayout.this.mTabTextColors != null)
        this.mTextView.setTextColor(TabLayout.this.mTabTextColors); 
      updateTextAndIcon(this.mTextView, this.mIconView);
    } else if (this.mCustomTextView != null || this.mCustomIconView != null) {
      updateTextAndIcon(this.mCustomTextView, this.mCustomIconView);
    } 
    if (tabLayout$Tab != null && tabLayout$Tab.isSelected()) {
      bool = true;
    } else {
      bool = false;
    } 
    setSelected(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$TabView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */