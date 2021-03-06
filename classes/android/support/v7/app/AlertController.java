package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.appcompat.R;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

class AlertController {
  ListAdapter mAdapter;
  
  private int mAlertDialogLayout;
  
  private final View.OnClickListener mButtonHandler = new AlertController$1(this);
  
  Button mButtonNegative;
  
  Message mButtonNegativeMessage;
  
  private CharSequence mButtonNegativeText;
  
  Button mButtonNeutral;
  
  Message mButtonNeutralMessage;
  
  private CharSequence mButtonNeutralText;
  
  private int mButtonPanelLayoutHint = 0;
  
  private int mButtonPanelSideLayout;
  
  Button mButtonPositive;
  
  Message mButtonPositiveMessage;
  
  private CharSequence mButtonPositiveText;
  
  int mCheckedItem = -1;
  
  private final Context mContext;
  
  private View mCustomTitleView;
  
  final AppCompatDialog mDialog;
  
  Handler mHandler;
  
  private Drawable mIcon;
  
  private int mIconId = 0;
  
  private ImageView mIconView;
  
  int mListItemLayout;
  
  int mListLayout;
  
  ListView mListView;
  
  private CharSequence mMessage;
  
  private TextView mMessageView;
  
  int mMultiChoiceItemLayout;
  
  NestedScrollView mScrollView;
  
  private boolean mShowTitle;
  
  int mSingleChoiceItemLayout;
  
  private CharSequence mTitle;
  
  private TextView mTitleView;
  
  private View mView;
  
  private int mViewLayoutResId;
  
  private int mViewSpacingBottom;
  
  private int mViewSpacingLeft;
  
  private int mViewSpacingRight;
  
  private boolean mViewSpacingSpecified = false;
  
  private int mViewSpacingTop;
  
  private final Window mWindow;
  
  public AlertController(Context paramContext, AppCompatDialog paramAppCompatDialog, Window paramWindow) {
    this.mContext = paramContext;
    this.mDialog = paramAppCompatDialog;
    this.mWindow = paramWindow;
    this.mHandler = new AlertController$ButtonHandler((DialogInterface)paramAppCompatDialog);
    TypedArray typedArray = paramContext.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
    this.mAlertDialogLayout = typedArray.getResourceId(R.styleable.AlertDialog_android_layout, 0);
    this.mButtonPanelSideLayout = typedArray.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
    this.mListLayout = typedArray.getResourceId(R.styleable.AlertDialog_listLayout, 0);
    this.mMultiChoiceItemLayout = typedArray.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
    this.mSingleChoiceItemLayout = typedArray.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
    this.mListItemLayout = typedArray.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
    this.mShowTitle = typedArray.getBoolean(R.styleable.AlertDialog_showTitle, true);
    typedArray.recycle();
    paramAppCompatDialog.supportRequestWindowFeature(1);
  }
  
  static boolean canTextInput(View paramView) {
    if (paramView.onCheckIsTextEditor())
      return true; 
    if (!(paramView instanceof ViewGroup))
      return false; 
    ViewGroup viewGroup = (ViewGroup)paramView;
    int i = viewGroup.getChildCount();
    while (i > 0) {
      int j = i - 1;
      i = j;
      if (canTextInput(viewGroup.getChildAt(j)))
        return true; 
    } 
    return false;
  }
  
  private void centerButton(Button paramButton) {
    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)paramButton.getLayoutParams();
    layoutParams.gravity = 1;
    layoutParams.weight = 0.5F;
    paramButton.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
  }
  
  static void manageScrollIndicators(View paramView1, View paramView2, View paramView3) {
    boolean bool = false;
    if (paramView2 != null) {
      byte b;
      if (ViewCompat.canScrollVertically(paramView1, -1)) {
        b = 0;
      } else {
        b = 4;
      } 
      paramView2.setVisibility(b);
    } 
    if (paramView3 != null) {
      byte b;
      if (ViewCompat.canScrollVertically(paramView1, 1)) {
        b = bool;
      } else {
        b = 4;
      } 
      paramView3.setVisibility(b);
    } 
  }
  
  @Nullable
  private ViewGroup resolvePanel(@Nullable View paramView1, @Nullable View paramView2) {
    if (paramView1 == null) {
      if (paramView2 instanceof ViewStub) {
        paramView1 = ((ViewStub)paramView2).inflate();
        return (ViewGroup)paramView1;
      } 
    } else {
      if (paramView2 != null) {
        ViewParent viewParent = paramView2.getParent();
        if (viewParent instanceof ViewGroup)
          ((ViewGroup)viewParent).removeView(paramView2); 
      } 
      if (paramView1 instanceof ViewStub)
        paramView1 = ((ViewStub)paramView1).inflate(); 
      return (ViewGroup)paramView1;
    } 
    paramView1 = paramView2;
    return (ViewGroup)paramView1;
  }
  
  private int selectContentView() {
    return (this.mButtonPanelSideLayout == 0) ? this.mAlertDialogLayout : ((this.mButtonPanelLayoutHint == 1) ? this.mButtonPanelSideLayout : this.mAlertDialogLayout);
  }
  
  private void setScrollIndicators(ViewGroup paramViewGroup, View paramView, int paramInt1, int paramInt2) {
    View view1 = null;
    View view3 = this.mWindow.findViewById(R.id.scrollIndicatorUp);
    View view2 = this.mWindow.findViewById(R.id.scrollIndicatorDown);
    if (Build.VERSION.SDK_INT >= 23) {
      ViewCompat.setScrollIndicators(paramView, paramInt1, paramInt2);
      if (view3 != null)
        paramViewGroup.removeView(view3); 
      if (view2 != null)
        paramViewGroup.removeView(view2); 
      return;
    } 
    paramView = view3;
    if (view3 != null) {
      paramView = view3;
      if ((paramInt1 & 0x1) == 0) {
        paramViewGroup.removeView(view3);
        paramView = null;
      } 
    } 
    if (view2 != null && (paramInt1 & 0x2) == 0) {
      paramViewGroup.removeView(view2);
    } else {
      view1 = view2;
    } 
    if (paramView != null || view1 != null) {
      if (this.mMessage != null) {
        this.mScrollView.setOnScrollChangeListener(new AlertController$2(this, paramView, view1));
        this.mScrollView.post(new AlertController$3(this, paramView, view1));
        return;
      } 
      if (this.mListView != null) {
        this.mListView.setOnScrollListener(new AlertController$4(this, paramView, view1));
        this.mListView.post(new AlertController$5(this, paramView, view1));
        return;
      } 
      if (paramView != null)
        paramViewGroup.removeView(paramView); 
      if (view1 != null) {
        paramViewGroup.removeView(view1);
        return;
      } 
    } 
  }
  
  private void setupButtons(ViewGroup paramViewGroup) {
    int i;
    boolean bool = true;
    this.mButtonPositive = (Button)paramViewGroup.findViewById(16908313);
    this.mButtonPositive.setOnClickListener(this.mButtonHandler);
    if (TextUtils.isEmpty(this.mButtonPositiveText)) {
      this.mButtonPositive.setVisibility(8);
      i = 0;
    } else {
      this.mButtonPositive.setText(this.mButtonPositiveText);
      this.mButtonPositive.setVisibility(0);
      i = 1;
    } 
    this.mButtonNegative = (Button)paramViewGroup.findViewById(16908314);
    this.mButtonNegative.setOnClickListener(this.mButtonHandler);
    if (TextUtils.isEmpty(this.mButtonNegativeText)) {
      this.mButtonNegative.setVisibility(8);
    } else {
      this.mButtonNegative.setText(this.mButtonNegativeText);
      this.mButtonNegative.setVisibility(0);
      i |= 0x2;
    } 
    this.mButtonNeutral = (Button)paramViewGroup.findViewById(16908315);
    this.mButtonNeutral.setOnClickListener(this.mButtonHandler);
    if (TextUtils.isEmpty(this.mButtonNeutralText)) {
      this.mButtonNeutral.setVisibility(8);
    } else {
      this.mButtonNeutral.setText(this.mButtonNeutralText);
      this.mButtonNeutral.setVisibility(0);
      i |= 0x4;
    } 
    if (shouldCenterSingleButton(this.mContext))
      if (i == 1) {
        centerButton(this.mButtonPositive);
      } else if (i == 2) {
        centerButton(this.mButtonNegative);
      } else if (i == 4) {
        centerButton(this.mButtonNeutral);
      }  
    if (i != 0) {
      i = bool;
    } else {
      i = 0;
    } 
    if (i == 0)
      paramViewGroup.setVisibility(8); 
  }
  
  private void setupContent(ViewGroup paramViewGroup) {
    this.mScrollView = (NestedScrollView)this.mWindow.findViewById(R.id.scrollView);
    this.mScrollView.setFocusable(false);
    this.mScrollView.setNestedScrollingEnabled(false);
    this.mMessageView = (TextView)paramViewGroup.findViewById(16908299);
    if (this.mMessageView == null)
      return; 
    if (this.mMessage != null) {
      this.mMessageView.setText(this.mMessage);
      return;
    } 
    this.mMessageView.setVisibility(8);
    this.mScrollView.removeView((View)this.mMessageView);
    if (this.mListView != null) {
      paramViewGroup = (ViewGroup)this.mScrollView.getParent();
      int i = paramViewGroup.indexOfChild((View)this.mScrollView);
      paramViewGroup.removeViewAt(i);
      paramViewGroup.addView((View)this.mListView, i, new ViewGroup.LayoutParams(-1, -1));
      return;
    } 
    paramViewGroup.setVisibility(8);
  }
  
  private void setupCustomContent(ViewGroup paramViewGroup) {
    View view;
    boolean bool = false;
    if (this.mView != null) {
      view = this.mView;
    } else if (this.mViewLayoutResId != 0) {
      view = LayoutInflater.from(this.mContext).inflate(this.mViewLayoutResId, paramViewGroup, false);
    } else {
      view = null;
    } 
    if (view != null)
      bool = true; 
    if (!bool || !canTextInput(view))
      this.mWindow.setFlags(131072, 131072); 
    if (bool) {
      FrameLayout frameLayout = (FrameLayout)this.mWindow.findViewById(R.id.custom);
      frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
      if (this.mViewSpacingSpecified)
        frameLayout.setPadding(this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom); 
      if (this.mListView != null)
        ((LinearLayout.LayoutParams)paramViewGroup.getLayoutParams()).weight = 0.0F; 
      return;
    } 
    paramViewGroup.setVisibility(8);
  }
  
  private void setupTitle(ViewGroup paramViewGroup) {
    boolean bool;
    if (this.mCustomTitleView != null) {
      ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
      paramViewGroup.addView(this.mCustomTitleView, 0, layoutParams);
      this.mWindow.findViewById(R.id.title_template).setVisibility(8);
      return;
    } 
    this.mIconView = (ImageView)this.mWindow.findViewById(16908294);
    if (!TextUtils.isEmpty(this.mTitle)) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool && this.mShowTitle) {
      this.mTitleView = (TextView)this.mWindow.findViewById(R.id.alertTitle);
      this.mTitleView.setText(this.mTitle);
      if (this.mIconId != 0) {
        this.mIconView.setImageResource(this.mIconId);
        return;
      } 
      if (this.mIcon != null) {
        this.mIconView.setImageDrawable(this.mIcon);
        return;
      } 
      this.mTitleView.setPadding(this.mIconView.getPaddingLeft(), this.mIconView.getPaddingTop(), this.mIconView.getPaddingRight(), this.mIconView.getPaddingBottom());
      this.mIconView.setVisibility(8);
      return;
    } 
    this.mWindow.findViewById(R.id.title_template).setVisibility(8);
    this.mIconView.setVisibility(8);
    paramViewGroup.setVisibility(8);
  }
  
  private void setupView() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mWindow : Landroid/view/Window;
    //   4: getstatic android/support/v7/appcompat/R$id.parentPanel : I
    //   7: invokevirtual findViewById : (I)Landroid/view/View;
    //   10: astore #6
    //   12: aload #6
    //   14: getstatic android/support/v7/appcompat/R$id.topPanel : I
    //   17: invokevirtual findViewById : (I)Landroid/view/View;
    //   20: astore #8
    //   22: aload #6
    //   24: getstatic android/support/v7/appcompat/R$id.contentPanel : I
    //   27: invokevirtual findViewById : (I)Landroid/view/View;
    //   30: astore #7
    //   32: aload #6
    //   34: getstatic android/support/v7/appcompat/R$id.buttonPanel : I
    //   37: invokevirtual findViewById : (I)Landroid/view/View;
    //   40: astore #5
    //   42: aload #6
    //   44: getstatic android/support/v7/appcompat/R$id.customPanel : I
    //   47: invokevirtual findViewById : (I)Landroid/view/View;
    //   50: checkcast android/view/ViewGroup
    //   53: astore #6
    //   55: aload_0
    //   56: aload #6
    //   58: invokespecial setupCustomContent : (Landroid/view/ViewGroup;)V
    //   61: aload #6
    //   63: getstatic android/support/v7/appcompat/R$id.topPanel : I
    //   66: invokevirtual findViewById : (I)Landroid/view/View;
    //   69: astore #11
    //   71: aload #6
    //   73: getstatic android/support/v7/appcompat/R$id.contentPanel : I
    //   76: invokevirtual findViewById : (I)Landroid/view/View;
    //   79: astore #10
    //   81: aload #6
    //   83: getstatic android/support/v7/appcompat/R$id.buttonPanel : I
    //   86: invokevirtual findViewById : (I)Landroid/view/View;
    //   89: astore #9
    //   91: aload_0
    //   92: aload #11
    //   94: aload #8
    //   96: invokespecial resolvePanel : (Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    //   99: astore #8
    //   101: aload_0
    //   102: aload #10
    //   104: aload #7
    //   106: invokespecial resolvePanel : (Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    //   109: astore #7
    //   111: aload_0
    //   112: aload #9
    //   114: aload #5
    //   116: invokespecial resolvePanel : (Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    //   119: astore #5
    //   121: aload_0
    //   122: aload #7
    //   124: invokespecial setupContent : (Landroid/view/ViewGroup;)V
    //   127: aload_0
    //   128: aload #5
    //   130: invokespecial setupButtons : (Landroid/view/ViewGroup;)V
    //   133: aload_0
    //   134: aload #8
    //   136: invokespecial setupTitle : (Landroid/view/ViewGroup;)V
    //   139: aload #6
    //   141: ifnull -> 416
    //   144: aload #6
    //   146: invokevirtual getVisibility : ()I
    //   149: bipush #8
    //   151: if_icmpeq -> 416
    //   154: iconst_1
    //   155: istore_1
    //   156: aload #8
    //   158: ifnull -> 421
    //   161: aload #8
    //   163: invokevirtual getVisibility : ()I
    //   166: bipush #8
    //   168: if_icmpeq -> 421
    //   171: iconst_1
    //   172: istore_3
    //   173: aload #5
    //   175: ifnull -> 426
    //   178: aload #5
    //   180: invokevirtual getVisibility : ()I
    //   183: bipush #8
    //   185: if_icmpeq -> 426
    //   188: iconst_1
    //   189: istore #4
    //   191: iload #4
    //   193: ifne -> 222
    //   196: aload #7
    //   198: ifnull -> 222
    //   201: aload #7
    //   203: getstatic android/support/v7/appcompat/R$id.textSpacerNoButtons : I
    //   206: invokevirtual findViewById : (I)Landroid/view/View;
    //   209: astore #5
    //   211: aload #5
    //   213: ifnull -> 222
    //   216: aload #5
    //   218: iconst_0
    //   219: invokevirtual setVisibility : (I)V
    //   222: iload_3
    //   223: ifeq -> 432
    //   226: aload_0
    //   227: getfield mScrollView : Landroid/support/v4/widget/NestedScrollView;
    //   230: ifnull -> 241
    //   233: aload_0
    //   234: getfield mScrollView : Landroid/support/v4/widget/NestedScrollView;
    //   237: iconst_1
    //   238: invokevirtual setClipToPadding : (Z)V
    //   241: aconst_null
    //   242: astore #6
    //   244: aload_0
    //   245: getfield mMessage : Ljava/lang/CharSequence;
    //   248: ifnonnull -> 266
    //   251: aload_0
    //   252: getfield mListView : Landroid/widget/ListView;
    //   255: ifnonnull -> 266
    //   258: aload #6
    //   260: astore #5
    //   262: iload_1
    //   263: ifeq -> 284
    //   266: aload #6
    //   268: astore #5
    //   270: iload_1
    //   271: ifne -> 284
    //   274: aload #8
    //   276: getstatic android/support/v7/appcompat/R$id.titleDividerNoCustom : I
    //   279: invokevirtual findViewById : (I)Landroid/view/View;
    //   282: astore #5
    //   284: aload #5
    //   286: ifnull -> 295
    //   289: aload #5
    //   291: iconst_0
    //   292: invokevirtual setVisibility : (I)V
    //   295: aload_0
    //   296: getfield mListView : Landroid/widget/ListView;
    //   299: instanceof android/support/v7/app/AlertController$RecycleListView
    //   302: ifeq -> 318
    //   305: aload_0
    //   306: getfield mListView : Landroid/widget/ListView;
    //   309: checkcast android/support/v7/app/AlertController$RecycleListView
    //   312: iload_3
    //   313: iload #4
    //   315: invokevirtual setHasDecor : (ZZ)V
    //   318: iload_1
    //   319: ifne -> 365
    //   322: aload_0
    //   323: getfield mListView : Landroid/widget/ListView;
    //   326: ifnull -> 461
    //   329: aload_0
    //   330: getfield mListView : Landroid/widget/ListView;
    //   333: astore #5
    //   335: aload #5
    //   337: ifnull -> 365
    //   340: iload_3
    //   341: ifeq -> 470
    //   344: iconst_1
    //   345: istore_1
    //   346: iload #4
    //   348: ifeq -> 475
    //   351: iconst_2
    //   352: istore_2
    //   353: aload_0
    //   354: aload #7
    //   356: aload #5
    //   358: iload_2
    //   359: iload_1
    //   360: ior
    //   361: iconst_3
    //   362: invokespecial setScrollIndicators : (Landroid/view/ViewGroup;Landroid/view/View;II)V
    //   365: aload_0
    //   366: getfield mListView : Landroid/widget/ListView;
    //   369: astore #5
    //   371: aload #5
    //   373: ifnull -> 415
    //   376: aload_0
    //   377: getfield mAdapter : Landroid/widget/ListAdapter;
    //   380: ifnull -> 415
    //   383: aload #5
    //   385: aload_0
    //   386: getfield mAdapter : Landroid/widget/ListAdapter;
    //   389: invokevirtual setAdapter : (Landroid/widget/ListAdapter;)V
    //   392: aload_0
    //   393: getfield mCheckedItem : I
    //   396: istore_1
    //   397: iload_1
    //   398: iconst_m1
    //   399: if_icmple -> 415
    //   402: aload #5
    //   404: iload_1
    //   405: iconst_1
    //   406: invokevirtual setItemChecked : (IZ)V
    //   409: aload #5
    //   411: iload_1
    //   412: invokevirtual setSelection : (I)V
    //   415: return
    //   416: iconst_0
    //   417: istore_1
    //   418: goto -> 156
    //   421: iconst_0
    //   422: istore_3
    //   423: goto -> 173
    //   426: iconst_0
    //   427: istore #4
    //   429: goto -> 191
    //   432: aload #7
    //   434: ifnull -> 295
    //   437: aload #7
    //   439: getstatic android/support/v7/appcompat/R$id.textSpacerNoTitle : I
    //   442: invokevirtual findViewById : (I)Landroid/view/View;
    //   445: astore #5
    //   447: aload #5
    //   449: ifnull -> 295
    //   452: aload #5
    //   454: iconst_0
    //   455: invokevirtual setVisibility : (I)V
    //   458: goto -> 295
    //   461: aload_0
    //   462: getfield mScrollView : Landroid/support/v4/widget/NestedScrollView;
    //   465: astore #5
    //   467: goto -> 335
    //   470: iconst_0
    //   471: istore_1
    //   472: goto -> 346
    //   475: iconst_0
    //   476: istore_2
    //   477: goto -> 353
  }
  
  private static boolean shouldCenterSingleButton(Context paramContext) {
    TypedValue typedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
    return (typedValue.data != 0);
  }
  
  public Button getButton(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case -1:
        return this.mButtonPositive;
      case -2:
        return this.mButtonNegative;
      case -3:
        break;
    } 
    return this.mButtonNeutral;
  }
  
  public int getIconAttributeResId(int paramInt) {
    TypedValue typedValue = new TypedValue();
    this.mContext.getTheme().resolveAttribute(paramInt, typedValue, true);
    return typedValue.resourceId;
  }
  
  public ListView getListView() {
    return this.mListView;
  }
  
  public void installContent() {
    int i = selectContentView();
    this.mDialog.setContentView(i);
    setupView();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    return (this.mScrollView != null && this.mScrollView.executeKeyEvent(paramKeyEvent));
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
    return (this.mScrollView != null && this.mScrollView.executeKeyEvent(paramKeyEvent));
  }
  
  public void setButton(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage) {
    Message message = paramMessage;
    if (paramMessage == null) {
      message = paramMessage;
      if (paramOnClickListener != null)
        message = this.mHandler.obtainMessage(paramInt, paramOnClickListener); 
    } 
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("Button does not exist");
      case -1:
        this.mButtonPositiveText = paramCharSequence;
        this.mButtonPositiveMessage = message;
        return;
      case -2:
        this.mButtonNegativeText = paramCharSequence;
        this.mButtonNegativeMessage = message;
        return;
      case -3:
        break;
    } 
    this.mButtonNeutralText = paramCharSequence;
    this.mButtonNeutralMessage = message;
  }
  
  public void setButtonPanelLayoutHint(int paramInt) {
    this.mButtonPanelLayoutHint = paramInt;
  }
  
  public void setCustomTitle(View paramView) {
    this.mCustomTitleView = paramView;
  }
  
  public void setIcon(int paramInt) {
    this.mIcon = null;
    this.mIconId = paramInt;
    if (this.mIconView != null) {
      if (paramInt != 0) {
        this.mIconView.setVisibility(0);
        this.mIconView.setImageResource(this.mIconId);
        return;
      } 
    } else {
      return;
    } 
    this.mIconView.setVisibility(8);
  }
  
  public void setIcon(Drawable paramDrawable) {
    this.mIcon = paramDrawable;
    this.mIconId = 0;
    if (this.mIconView != null) {
      if (paramDrawable != null) {
        this.mIconView.setVisibility(0);
        this.mIconView.setImageDrawable(paramDrawable);
        return;
      } 
    } else {
      return;
    } 
    this.mIconView.setVisibility(8);
  }
  
  public void setMessage(CharSequence paramCharSequence) {
    this.mMessage = paramCharSequence;
    if (this.mMessageView != null)
      this.mMessageView.setText(paramCharSequence); 
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    this.mTitle = paramCharSequence;
    if (this.mTitleView != null)
      this.mTitleView.setText(paramCharSequence); 
  }
  
  public void setView(int paramInt) {
    this.mView = null;
    this.mViewLayoutResId = paramInt;
    this.mViewSpacingSpecified = false;
  }
  
  public void setView(View paramView) {
    this.mView = paramView;
    this.mViewLayoutResId = 0;
    this.mViewSpacingSpecified = false;
  }
  
  public void setView(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mView = paramView;
    this.mViewLayoutResId = 0;
    this.mViewSpacingSpecified = true;
    this.mViewSpacingLeft = paramInt1;
    this.mViewSpacingTop = paramInt2;
    this.mViewSpacingRight = paramInt3;
    this.mViewSpacingBottom = paramInt4;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */