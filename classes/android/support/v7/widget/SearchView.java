package android.support.v7.widget;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.CursorAdapter;
import android.support.v7.appcompat.R;
import android.support.v7.view.CollapsibleActionView;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.util.WeakHashMap;

public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
  static final boolean DBG = false;
  
  static final SearchView$AutoCompleteTextViewReflector HIDDEN_METHOD_INVOKER = new SearchView$AutoCompleteTextViewReflector();
  
  private static final String IME_OPTION_NO_MICROPHONE = "nm";
  
  static final String LOG_TAG = "SearchView";
  
  private Bundle mAppSearchData;
  
  private boolean mClearingFocus;
  
  final ImageView mCloseButton;
  
  private final ImageView mCollapsedIcon;
  
  private int mCollapsedImeOptions;
  
  private final CharSequence mDefaultQueryHint;
  
  private final View mDropDownAnchor;
  
  private boolean mExpandedInActionView;
  
  final ImageView mGoButton;
  
  private boolean mIconified;
  
  private boolean mIconifiedByDefault;
  
  private int mMaxWidth;
  
  private CharSequence mOldQueryText;
  
  private final View.OnClickListener mOnClickListener = new SearchView$7(this);
  
  private SearchView$OnCloseListener mOnCloseListener;
  
  private final TextView.OnEditorActionListener mOnEditorActionListener = new SearchView$9(this);
  
  private final AdapterView.OnItemClickListener mOnItemClickListener = new SearchView$10(this);
  
  private final AdapterView.OnItemSelectedListener mOnItemSelectedListener = new SearchView$11(this);
  
  private SearchView$OnQueryTextListener mOnQueryChangeListener;
  
  View.OnFocusChangeListener mOnQueryTextFocusChangeListener;
  
  private View.OnClickListener mOnSearchClickListener;
  
  private SearchView$OnSuggestionListener mOnSuggestionListener;
  
  private final WeakHashMap<String, Drawable.ConstantState> mOutsideDrawablesCache = new WeakHashMap<String, Drawable.ConstantState>();
  
  private CharSequence mQueryHint;
  
  private boolean mQueryRefinement;
  
  private Runnable mReleaseCursorRunnable = new SearchView$3(this);
  
  final ImageView mSearchButton;
  
  private final View mSearchEditFrame;
  
  private final Drawable mSearchHintIcon;
  
  private final View mSearchPlate;
  
  final SearchView$SearchAutoComplete mSearchSrcTextView;
  
  private Rect mSearchSrcTextViewBounds = new Rect();
  
  private Rect mSearchSrtTextViewBoundsExpanded = new Rect();
  
  SearchableInfo mSearchable;
  
  private Runnable mShowImeRunnable = new SearchView$1(this);
  
  private final View mSubmitArea;
  
  private boolean mSubmitButtonEnabled;
  
  private final int mSuggestionCommitIconResId;
  
  private final int mSuggestionRowLayout;
  
  CursorAdapter mSuggestionsAdapter;
  
  private int[] mTemp = new int[2];
  
  private int[] mTemp2 = new int[2];
  
  View.OnKeyListener mTextKeyListener = new SearchView$8(this);
  
  private TextWatcher mTextWatcher = new SearchView$12(this);
  
  private SearchView$UpdatableTouchDelegate mTouchDelegate;
  
  private final Runnable mUpdateDrawableStateRunnable = new SearchView$2(this);
  
  private CharSequence mUserQuery;
  
  private final Intent mVoiceAppSearchIntent;
  
  final ImageView mVoiceButton;
  
  private boolean mVoiceButtonEnabled;
  
  private final Intent mVoiceWebSearchIntent;
  
  public SearchView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, R.attr.searchViewStyle);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.SearchView, paramInt, 0);
    LayoutInflater.from(paramContext).inflate(tintTypedArray.getResourceId(R.styleable.SearchView_layout, R.layout.abc_search_view), this, true);
    this.mSearchSrcTextView = (SearchView$SearchAutoComplete)findViewById(R.id.search_src_text);
    this.mSearchSrcTextView.setSearchView(this);
    this.mSearchEditFrame = findViewById(R.id.search_edit_frame);
    this.mSearchPlate = findViewById(R.id.search_plate);
    this.mSubmitArea = findViewById(R.id.submit_area);
    this.mSearchButton = (ImageView)findViewById(R.id.search_button);
    this.mGoButton = (ImageView)findViewById(R.id.search_go_btn);
    this.mCloseButton = (ImageView)findViewById(R.id.search_close_btn);
    this.mVoiceButton = (ImageView)findViewById(R.id.search_voice_btn);
    this.mCollapsedIcon = (ImageView)findViewById(R.id.search_mag_icon);
    ViewCompat.setBackground(this.mSearchPlate, tintTypedArray.getDrawable(R.styleable.SearchView_queryBackground));
    ViewCompat.setBackground(this.mSubmitArea, tintTypedArray.getDrawable(R.styleable.SearchView_submitBackground));
    this.mSearchButton.setImageDrawable(tintTypedArray.getDrawable(R.styleable.SearchView_searchIcon));
    this.mGoButton.setImageDrawable(tintTypedArray.getDrawable(R.styleable.SearchView_goIcon));
    this.mCloseButton.setImageDrawable(tintTypedArray.getDrawable(R.styleable.SearchView_closeIcon));
    this.mVoiceButton.setImageDrawable(tintTypedArray.getDrawable(R.styleable.SearchView_voiceIcon));
    this.mCollapsedIcon.setImageDrawable(tintTypedArray.getDrawable(R.styleable.SearchView_searchIcon));
    this.mSearchHintIcon = tintTypedArray.getDrawable(R.styleable.SearchView_searchHintIcon);
    this.mSuggestionRowLayout = tintTypedArray.getResourceId(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
    this.mSuggestionCommitIconResId = tintTypedArray.getResourceId(R.styleable.SearchView_commitIcon, 0);
    this.mSearchButton.setOnClickListener(this.mOnClickListener);
    this.mCloseButton.setOnClickListener(this.mOnClickListener);
    this.mGoButton.setOnClickListener(this.mOnClickListener);
    this.mVoiceButton.setOnClickListener(this.mOnClickListener);
    this.mSearchSrcTextView.setOnClickListener(this.mOnClickListener);
    this.mSearchSrcTextView.addTextChangedListener(this.mTextWatcher);
    this.mSearchSrcTextView.setOnEditorActionListener(this.mOnEditorActionListener);
    this.mSearchSrcTextView.setOnItemClickListener(this.mOnItemClickListener);
    this.mSearchSrcTextView.setOnItemSelectedListener(this.mOnItemSelectedListener);
    this.mSearchSrcTextView.setOnKeyListener(this.mTextKeyListener);
    this.mSearchSrcTextView.setOnFocusChangeListener(new SearchView$4(this));
    setIconifiedByDefault(tintTypedArray.getBoolean(R.styleable.SearchView_iconifiedByDefault, true));
    paramInt = tintTypedArray.getDimensionPixelSize(R.styleable.SearchView_android_maxWidth, -1);
    if (paramInt != -1)
      setMaxWidth(paramInt); 
    this.mDefaultQueryHint = tintTypedArray.getText(R.styleable.SearchView_defaultQueryHint);
    this.mQueryHint = tintTypedArray.getText(R.styleable.SearchView_queryHint);
    paramInt = tintTypedArray.getInt(R.styleable.SearchView_android_imeOptions, -1);
    if (paramInt != -1)
      setImeOptions(paramInt); 
    paramInt = tintTypedArray.getInt(R.styleable.SearchView_android_inputType, -1);
    if (paramInt != -1)
      setInputType(paramInt); 
    setFocusable(tintTypedArray.getBoolean(R.styleable.SearchView_android_focusable, true));
    tintTypedArray.recycle();
    this.mVoiceWebSearchIntent = new Intent("android.speech.action.WEB_SEARCH");
    this.mVoiceWebSearchIntent.addFlags(268435456);
    this.mVoiceWebSearchIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    this.mVoiceAppSearchIntent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    this.mVoiceAppSearchIntent.addFlags(268435456);
    this.mDropDownAnchor = findViewById(this.mSearchSrcTextView.getDropDownAnchor());
    if (this.mDropDownAnchor != null)
      if (Build.VERSION.SDK_INT >= 11) {
        addOnLayoutChangeListenerToDropDownAnchorSDK11();
      } else {
        addOnLayoutChangeListenerToDropDownAnchorBase();
      }  
    updateViewsVisibility(this.mIconifiedByDefault);
    updateQueryHint();
  }
  
  private void addOnLayoutChangeListenerToDropDownAnchorBase() {
    this.mDropDownAnchor.getViewTreeObserver().addOnGlobalLayoutListener(new SearchView$6(this));
  }
  
  @TargetApi(11)
  private void addOnLayoutChangeListenerToDropDownAnchorSDK11() {
    this.mDropDownAnchor.addOnLayoutChangeListener(new SearchView$5(this));
  }
  
  private Intent createIntent(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4) {
    Intent intent = new Intent(paramString1);
    intent.addFlags(268435456);
    if (paramUri != null)
      intent.setData(paramUri); 
    intent.putExtra("user_query", this.mUserQuery);
    if (paramString3 != null)
      intent.putExtra("query", paramString3); 
    if (paramString2 != null)
      intent.putExtra("intent_extra_data_key", paramString2); 
    if (this.mAppSearchData != null)
      intent.putExtra("app_data", this.mAppSearchData); 
    if (paramInt != 0) {
      intent.putExtra("action_key", paramInt);
      intent.putExtra("action_msg", paramString4);
    } 
    intent.setComponent(this.mSearchable.getSearchActivity());
    return intent;
  }
  
  private Intent createIntentFromSuggestion(Cursor paramCursor, int paramInt, String paramString) {
    try {
      String str = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_action");
      str1 = str;
      if (str == null)
        str1 = this.mSearchable.getSuggestIntentAction(); 
    } catch (RuntimeException runtimeException2) {
      try {
        paramInt = paramCursor.getPosition();
      } catch (RuntimeException runtimeException1) {
        paramInt = -1;
      } 
      Log.w("SearchView", "Search suggestions cursor at row " + paramInt + " returned exception.", runtimeException2);
      return null;
    } 
    String str2 = str1;
    if (str1 == null)
      str2 = "android.intent.action.SEARCH"; 
    String str3 = SuggestionsAdapter.getColumnString((Cursor)runtimeException1, "suggest_intent_data");
    String str1 = str3;
    if (str3 == null)
      str1 = this.mSearchable.getSuggestIntentData(); 
    str3 = str1;
    if (str1 != null) {
      String str = SuggestionsAdapter.getColumnString((Cursor)runtimeException1, "suggest_intent_data_id");
      str3 = str1;
      if (str != null)
        str3 = str1 + "/" + Uri.encode(str); 
    } 
    if (str3 == null) {
      str1 = null;
      str3 = SuggestionsAdapter.getColumnString((Cursor)runtimeException1, "suggest_intent_query");
      return createIntent(str2, (Uri)str1, SuggestionsAdapter.getColumnString((Cursor)runtimeException1, "suggest_intent_extra_data"), str3, paramInt, (String)runtimeException2);
    } 
    Uri uri = Uri.parse(str3);
    str3 = SuggestionsAdapter.getColumnString((Cursor)runtimeException1, "suggest_intent_query");
    return createIntent(str2, uri, SuggestionsAdapter.getColumnString((Cursor)runtimeException1, "suggest_intent_extra_data"), str3, paramInt, (String)runtimeException2);
  }
  
  private Intent createVoiceAppSearchIntent(Intent paramIntent, SearchableInfo paramSearchableInfo) {
    String str2 = null;
    ComponentName componentName = paramSearchableInfo.getSearchActivity();
    Intent intent1 = new Intent("android.intent.action.SEARCH");
    intent1.setComponent(componentName);
    PendingIntent pendingIntent = PendingIntent.getActivity(getContext(), 0, intent1, 1073741824);
    Bundle bundle = new Bundle();
    if (this.mAppSearchData != null)
      bundle.putParcelable("app_data", (Parcelable)this.mAppSearchData); 
    Intent intent2 = new Intent(paramIntent);
    String str1 = "free_form";
    int i = 1;
    Resources resources = getResources();
    if (paramSearchableInfo.getVoiceLanguageModeId() != 0)
      str1 = resources.getString(paramSearchableInfo.getVoiceLanguageModeId()); 
    if (paramSearchableInfo.getVoicePromptTextId() != 0) {
      String str = resources.getString(paramSearchableInfo.getVoicePromptTextId());
    } else {
      intent1 = null;
    } 
    if (paramSearchableInfo.getVoiceLanguageId() != 0) {
      String str = resources.getString(paramSearchableInfo.getVoiceLanguageId());
    } else {
      resources = null;
    } 
    if (paramSearchableInfo.getVoiceMaxResults() != 0)
      i = paramSearchableInfo.getVoiceMaxResults(); 
    intent2.putExtra("android.speech.extra.LANGUAGE_MODEL", str1);
    intent2.putExtra("android.speech.extra.PROMPT", (String)intent1);
    intent2.putExtra("android.speech.extra.LANGUAGE", (String)resources);
    intent2.putExtra("android.speech.extra.MAX_RESULTS", i);
    if (componentName == null) {
      str1 = str2;
      intent2.putExtra("calling_package", str1);
      intent2.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", (Parcelable)pendingIntent);
      intent2.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
      return intent2;
    } 
    str1 = componentName.flattenToShortString();
    intent2.putExtra("calling_package", str1);
    intent2.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", (Parcelable)pendingIntent);
    intent2.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
    return intent2;
  }
  
  private Intent createVoiceWebSearchIntent(Intent paramIntent, SearchableInfo paramSearchableInfo) {
    Intent intent = new Intent(paramIntent);
    ComponentName componentName = paramSearchableInfo.getSearchActivity();
    if (componentName == null) {
      componentName = null;
      intent.putExtra("calling_package", (String)componentName);
      return intent;
    } 
    String str = componentName.flattenToShortString();
    intent.putExtra("calling_package", str);
    return intent;
  }
  
  private void dismissSuggestions() {
    this.mSearchSrcTextView.dismissDropDown();
  }
  
  private void getChildBoundsWithinSearchView(View paramView, Rect paramRect) {
    paramView.getLocationInWindow(this.mTemp);
    getLocationInWindow(this.mTemp2);
    int i = this.mTemp[1] - this.mTemp2[1];
    int j = this.mTemp[0] - this.mTemp2[0];
    paramRect.set(j, i, paramView.getWidth() + j, paramView.getHeight() + i);
  }
  
  private CharSequence getDecoratedHint(CharSequence paramCharSequence) {
    if (!this.mIconifiedByDefault || this.mSearchHintIcon == null)
      return paramCharSequence; 
    int i = (int)(this.mSearchSrcTextView.getTextSize() * 1.25D);
    this.mSearchHintIcon.setBounds(0, 0, i, i);
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
    spannableStringBuilder.setSpan(new ImageSpan(this.mSearchHintIcon), 1, 2, 33);
    spannableStringBuilder.append(paramCharSequence);
    return (CharSequence)spannableStringBuilder;
  }
  
  private int getPreferredHeight() {
    return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
  }
  
  private int getPreferredWidth() {
    return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
  }
  
  private boolean hasVoiceSearch() {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.mSearchable != null) {
      bool1 = bool2;
      if (this.mSearchable.getVoiceSearchEnabled()) {
        Intent intent = null;
        if (this.mSearchable.getVoiceSearchLaunchWebSearch()) {
          intent = this.mVoiceWebSearchIntent;
        } else if (this.mSearchable.getVoiceSearchLaunchRecognizer()) {
          intent = this.mVoiceAppSearchIntent;
        } 
        bool1 = bool2;
        if (intent != null) {
          bool1 = bool2;
          if (getContext().getPackageManager().resolveActivity(intent, 65536) != null)
            bool1 = true; 
        } 
      } 
    } 
    return bool1;
  }
  
  static boolean isLandscapeMode(Context paramContext) {
    return ((paramContext.getResources().getConfiguration()).orientation == 2);
  }
  
  private boolean isSubmitAreaEnabled() {
    return ((this.mSubmitButtonEnabled || this.mVoiceButtonEnabled) && !isIconified());
  }
  
  private void launchIntent(Intent paramIntent) {
    if (paramIntent == null)
      return; 
    try {
      getContext().startActivity(paramIntent);
      return;
    } catch (RuntimeException runtimeException) {
      Log.e("SearchView", "Failed launch activity: " + paramIntent, runtimeException);
      return;
    } 
  }
  
  private boolean launchSuggestion(int paramInt1, int paramInt2, String paramString) {
    Cursor cursor = this.mSuggestionsAdapter.getCursor();
    if (cursor != null && cursor.moveToPosition(paramInt1)) {
      launchIntent(createIntentFromSuggestion(cursor, paramInt2, paramString));
      return true;
    } 
    return false;
  }
  
  private void postUpdateFocusedState() {
    post(this.mUpdateDrawableStateRunnable);
  }
  
  private void rewriteQueryFromSuggestion(int paramInt) {
    Editable editable = this.mSearchSrcTextView.getText();
    Cursor cursor = this.mSuggestionsAdapter.getCursor();
    if (cursor == null)
      return; 
    if (cursor.moveToPosition(paramInt)) {
      CharSequence charSequence = this.mSuggestionsAdapter.convertToString(cursor);
      if (charSequence != null) {
        setQuery(charSequence);
        return;
      } 
      setQuery((CharSequence)editable);
      return;
    } 
    setQuery((CharSequence)editable);
  }
  
  private void setQuery(CharSequence paramCharSequence) {
    int i;
    this.mSearchSrcTextView.setText(paramCharSequence);
    SearchView$SearchAutoComplete searchView$SearchAutoComplete = this.mSearchSrcTextView;
    if (TextUtils.isEmpty(paramCharSequence)) {
      i = 0;
    } else {
      i = paramCharSequence.length();
    } 
    searchView$SearchAutoComplete.setSelection(i);
  }
  
  private void updateCloseButton() {
    boolean bool;
    byte b3 = 1;
    byte b2 = 0;
    if (!TextUtils.isEmpty((CharSequence)this.mSearchSrcTextView.getText())) {
      bool = true;
    } else {
      bool = false;
    } 
    byte b1 = b3;
    if (!bool)
      if (this.mIconifiedByDefault && !this.mExpandedInActionView) {
        b1 = b3;
      } else {
        b1 = 0;
      }  
    ImageView imageView = this.mCloseButton;
    if (b1) {
      b1 = b2;
    } else {
      b1 = 8;
    } 
    imageView.setVisibility(b1);
    Drawable drawable = this.mCloseButton.getDrawable();
    if (drawable != null) {
      int[] arrayOfInt;
      if (bool) {
        arrayOfInt = ENABLED_STATE_SET;
      } else {
        arrayOfInt = EMPTY_STATE_SET;
      } 
      drawable.setState(arrayOfInt);
    } 
  }
  
  private void updateQueryHint() {
    CharSequence charSequence2 = getQueryHint();
    SearchView$SearchAutoComplete searchView$SearchAutoComplete = this.mSearchSrcTextView;
    CharSequence charSequence1 = charSequence2;
    if (charSequence2 == null)
      charSequence1 = ""; 
    searchView$SearchAutoComplete.setHint(getDecoratedHint(charSequence1));
  }
  
  private void updateSearchAutoComplete() {
    boolean bool = true;
    this.mSearchSrcTextView.setThreshold(this.mSearchable.getSuggestThreshold());
    this.mSearchSrcTextView.setImeOptions(this.mSearchable.getImeOptions());
    int j = this.mSearchable.getInputType();
    int i = j;
    if ((j & 0xF) == 1) {
      j &= 0xFFFEFFFF;
      i = j;
      if (this.mSearchable.getSuggestAuthority() != null)
        i = j | 0x10000 | 0x80000; 
    } 
    this.mSearchSrcTextView.setInputType(i);
    if (this.mSuggestionsAdapter != null)
      this.mSuggestionsAdapter.changeCursor(null); 
    if (this.mSearchable.getSuggestAuthority() != null) {
      this.mSuggestionsAdapter = (CursorAdapter)new SuggestionsAdapter(getContext(), this, this.mSearchable, this.mOutsideDrawablesCache);
      this.mSearchSrcTextView.setAdapter((ListAdapter)this.mSuggestionsAdapter);
      SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter)this.mSuggestionsAdapter;
      i = bool;
      if (this.mQueryRefinement)
        i = 2; 
      suggestionsAdapter.setQueryRefinement(i);
    } 
  }
  
  private void updateSubmitArea() {
    // Byte code:
    //   0: bipush #8
    //   2: istore_2
    //   3: iload_2
    //   4: istore_1
    //   5: aload_0
    //   6: invokespecial isSubmitAreaEnabled : ()Z
    //   9: ifeq -> 36
    //   12: aload_0
    //   13: getfield mGoButton : Landroid/widget/ImageView;
    //   16: invokevirtual getVisibility : ()I
    //   19: ifeq -> 34
    //   22: iload_2
    //   23: istore_1
    //   24: aload_0
    //   25: getfield mVoiceButton : Landroid/widget/ImageView;
    //   28: invokevirtual getVisibility : ()I
    //   31: ifne -> 36
    //   34: iconst_0
    //   35: istore_1
    //   36: aload_0
    //   37: getfield mSubmitArea : Landroid/view/View;
    //   40: iload_1
    //   41: invokevirtual setVisibility : (I)V
    //   44: return
  }
  
  private void updateSubmitButton(boolean paramBoolean) {
    // Byte code:
    //   0: bipush #8
    //   2: istore_3
    //   3: iload_3
    //   4: istore_2
    //   5: aload_0
    //   6: getfield mSubmitButtonEnabled : Z
    //   9: ifeq -> 45
    //   12: iload_3
    //   13: istore_2
    //   14: aload_0
    //   15: invokespecial isSubmitAreaEnabled : ()Z
    //   18: ifeq -> 45
    //   21: iload_3
    //   22: istore_2
    //   23: aload_0
    //   24: invokevirtual hasFocus : ()Z
    //   27: ifeq -> 45
    //   30: iload_1
    //   31: ifne -> 43
    //   34: iload_3
    //   35: istore_2
    //   36: aload_0
    //   37: getfield mVoiceButtonEnabled : Z
    //   40: ifne -> 45
    //   43: iconst_0
    //   44: istore_2
    //   45: aload_0
    //   46: getfield mGoButton : Landroid/widget/ImageView;
    //   49: iload_2
    //   50: invokevirtual setVisibility : (I)V
    //   53: return
  }
  
  private void updateViewsVisibility(boolean paramBoolean) {
    boolean bool1;
    boolean bool2 = true;
    byte b2 = 8;
    this.mIconified = paramBoolean;
    if (paramBoolean) {
      b1 = 0;
    } else {
      b1 = 8;
    } 
    if (!TextUtils.isEmpty((CharSequence)this.mSearchSrcTextView.getText())) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.mSearchButton.setVisibility(b1);
    updateSubmitButton(bool1);
    View view = this.mSearchEditFrame;
    if (paramBoolean) {
      b1 = 8;
    } else {
      b1 = 0;
    } 
    view.setVisibility(b1);
    byte b1 = b2;
    if (this.mCollapsedIcon.getDrawable() != null)
      if (this.mIconifiedByDefault) {
        b1 = b2;
      } else {
        b1 = 0;
      }  
    this.mCollapsedIcon.setVisibility(b1);
    updateCloseButton();
    if (!bool1) {
      paramBoolean = bool2;
    } else {
      paramBoolean = false;
    } 
    updateVoiceButton(paramBoolean);
    updateSubmitArea();
  }
  
  private void updateVoiceButton(boolean paramBoolean) {
    byte b;
    if (this.mVoiceButtonEnabled && !isIconified() && paramBoolean) {
      b = 0;
      this.mGoButton.setVisibility(8);
    } else {
      b = 8;
    } 
    this.mVoiceButton.setVisibility(b);
  }
  
  void adjustDropDownSizeAndPosition() {
    if (this.mDropDownAnchor.getWidth() > 1) {
      byte b;
      Resources resources = getContext().getResources();
      int j = this.mSearchPlate.getPaddingLeft();
      Rect rect = new Rect();
      boolean bool = ViewUtils.isLayoutRtl((View)this);
      if (this.mIconifiedByDefault) {
        b = resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width);
        b = resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + b;
      } else {
        b = 0;
      } 
      this.mSearchSrcTextView.getDropDownBackground().getPadding(rect);
      if (bool) {
        i = -rect.left;
      } else {
        i = j - rect.left + b;
      } 
      this.mSearchSrcTextView.setDropDownHorizontalOffset(i);
      int i = this.mDropDownAnchor.getWidth();
      int k = rect.left;
      int m = rect.right;
      this.mSearchSrcTextView.setDropDownWidth(b + i + k + m - j);
    } 
  }
  
  public void clearFocus() {
    this.mClearingFocus = true;
    setImeVisibility(false);
    super.clearFocus();
    this.mSearchSrcTextView.clearFocus();
    this.mClearingFocus = false;
  }
  
  void forceSuggestionQuery() {
    HIDDEN_METHOD_INVOKER.doBeforeTextChanged(this.mSearchSrcTextView);
    HIDDEN_METHOD_INVOKER.doAfterTextChanged(this.mSearchSrcTextView);
  }
  
  public int getImeOptions() {
    return this.mSearchSrcTextView.getImeOptions();
  }
  
  public int getInputType() {
    return this.mSearchSrcTextView.getInputType();
  }
  
  public int getMaxWidth() {
    return this.mMaxWidth;
  }
  
  public CharSequence getQuery() {
    return (CharSequence)this.mSearchSrcTextView.getText();
  }
  
  @Nullable
  public CharSequence getQueryHint() {
    return (this.mQueryHint != null) ? this.mQueryHint : ((this.mSearchable != null && this.mSearchable.getHintId() != 0) ? getContext().getText(this.mSearchable.getHintId()) : this.mDefaultQueryHint);
  }
  
  int getSuggestionCommitIconResId() {
    return this.mSuggestionCommitIconResId;
  }
  
  int getSuggestionRowLayout() {
    return this.mSuggestionRowLayout;
  }
  
  public CursorAdapter getSuggestionsAdapter() {
    return this.mSuggestionsAdapter;
  }
  
  public boolean isIconfiedByDefault() {
    return this.mIconifiedByDefault;
  }
  
  public boolean isIconified() {
    return this.mIconified;
  }
  
  public boolean isQueryRefinementEnabled() {
    return this.mQueryRefinement;
  }
  
  public boolean isSubmitButtonEnabled() {
    return this.mSubmitButtonEnabled;
  }
  
  void launchQuerySearch(int paramInt, String paramString1, String paramString2) {
    Intent intent = createIntent("android.intent.action.SEARCH", (Uri)null, (String)null, paramString2, paramInt, paramString1);
    getContext().startActivity(intent);
  }
  
  public void onActionViewCollapsed() {
    setQuery("", false);
    clearFocus();
    updateViewsVisibility(true);
    this.mSearchSrcTextView.setImeOptions(this.mCollapsedImeOptions);
    this.mExpandedInActionView = false;
  }
  
  public void onActionViewExpanded() {
    if (this.mExpandedInActionView)
      return; 
    this.mExpandedInActionView = true;
    this.mCollapsedImeOptions = this.mSearchSrcTextView.getImeOptions();
    this.mSearchSrcTextView.setImeOptions(this.mCollapsedImeOptions | 0x2000000);
    this.mSearchSrcTextView.setText("");
    setIconified(false);
  }
  
  void onCloseClicked() {
    if (TextUtils.isEmpty((CharSequence)this.mSearchSrcTextView.getText())) {
      if (this.mIconifiedByDefault && (this.mOnCloseListener == null || !this.mOnCloseListener.onClose())) {
        clearFocus();
        updateViewsVisibility(true);
      } 
      return;
    } 
    this.mSearchSrcTextView.setText("");
    this.mSearchSrcTextView.requestFocus();
    setImeVisibility(true);
  }
  
  protected void onDetachedFromWindow() {
    removeCallbacks(this.mUpdateDrawableStateRunnable);
    post(this.mReleaseCursorRunnable);
    super.onDetachedFromWindow();
  }
  
  boolean onItemClicked(int paramInt1, int paramInt2, String paramString) {
    boolean bool = false;
    if (this.mOnSuggestionListener == null || !this.mOnSuggestionListener.onSuggestionClick(paramInt1)) {
      launchSuggestion(paramInt1, 0, (String)null);
      setImeVisibility(false);
      dismissSuggestions();
      bool = true;
    } 
    return bool;
  }
  
  boolean onItemSelected(int paramInt) {
    if (this.mOnSuggestionListener == null || !this.mOnSuggestionListener.onSuggestionSelect(paramInt)) {
      rewriteQueryFromSuggestion(paramInt);
      return true;
    } 
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean) {
      getChildBoundsWithinSearchView((View)this.mSearchSrcTextView, this.mSearchSrcTextViewBounds);
      this.mSearchSrtTextViewBoundsExpanded.set(this.mSearchSrcTextViewBounds.left, 0, this.mSearchSrcTextViewBounds.right, paramInt4 - paramInt2);
      if (this.mTouchDelegate == null) {
        this.mTouchDelegate = new SearchView$UpdatableTouchDelegate(this.mSearchSrtTextViewBoundsExpanded, this.mSearchSrcTextViewBounds, (View)this.mSearchSrcTextView);
        setTouchDelegate(this.mTouchDelegate);
        return;
      } 
    } else {
      return;
    } 
    this.mTouchDelegate.setBounds(this.mSearchSrtTextViewBoundsExpanded, this.mSearchSrcTextViewBounds);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (isIconified()) {
      super.onMeasure(paramInt1, paramInt2);
      return;
    } 
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    switch (j) {
      default:
        paramInt1 = i;
        i = View.MeasureSpec.getMode(paramInt2);
        paramInt2 = View.MeasureSpec.getSize(paramInt2);
        switch (i) {
          default:
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
            return;
          case -2147483648:
            paramInt2 = Math.min(getPreferredHeight(), paramInt2);
          case 0:
            break;
        } 
        break;
      case -2147483648:
        if (this.mMaxWidth > 0) {
          paramInt1 = Math.min(this.mMaxWidth, i);
        } else {
          paramInt1 = Math.min(getPreferredWidth(), i);
        } 
        i = View.MeasureSpec.getMode(paramInt2);
        paramInt2 = View.MeasureSpec.getSize(paramInt2);
        switch (i) {
          default:
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
            return;
          case -2147483648:
            paramInt2 = Math.min(getPreferredHeight(), paramInt2);
          case 0:
            break;
        } 
        break;
      case 1073741824:
        paramInt1 = i;
        if (this.mMaxWidth > 0)
          paramInt1 = Math.min(this.mMaxWidth, i); 
        i = View.MeasureSpec.getMode(paramInt2);
        paramInt2 = View.MeasureSpec.getSize(paramInt2);
        switch (i) {
          default:
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
            return;
          case -2147483648:
            paramInt2 = Math.min(getPreferredHeight(), paramInt2);
          case 0:
            break;
        } 
        break;
      case 0:
        if (this.mMaxWidth > 0) {
          paramInt1 = this.mMaxWidth;
        } else {
          paramInt1 = getPreferredWidth();
        } 
        i = View.MeasureSpec.getMode(paramInt2);
        paramInt2 = View.MeasureSpec.getSize(paramInt2);
        switch (i) {
          default:
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
            return;
          case -2147483648:
            paramInt2 = Math.min(getPreferredHeight(), paramInt2);
          case 0:
            break;
        } 
        break;
    } 
    paramInt2 = getPreferredHeight();
  }
  
  void onQueryRefine(CharSequence paramCharSequence) {
    setQuery(paramCharSequence);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof SearchView$SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    SearchView$SavedState searchView$SavedState = (SearchView$SavedState)paramParcelable;
    super.onRestoreInstanceState(searchView$SavedState.getSuperState());
    updateViewsVisibility(searchView$SavedState.isIconified);
    requestLayout();
  }
  
  protected Parcelable onSaveInstanceState() {
    SearchView$SavedState searchView$SavedState = new SearchView$SavedState(super.onSaveInstanceState());
    searchView$SavedState.isIconified = isIconified();
    return (Parcelable)searchView$SavedState;
  }
  
  void onSearchClicked() {
    updateViewsVisibility(false);
    this.mSearchSrcTextView.requestFocus();
    setImeVisibility(true);
    if (this.mOnSearchClickListener != null)
      this.mOnSearchClickListener.onClick((View)this); 
  }
  
  void onSubmitQuery() {
    Editable editable = this.mSearchSrcTextView.getText();
    if (editable != null && TextUtils.getTrimmedLength((CharSequence)editable) > 0 && (this.mOnQueryChangeListener == null || !this.mOnQueryChangeListener.onQueryTextSubmit(editable.toString()))) {
      if (this.mSearchable != null)
        launchQuerySearch(0, (String)null, editable.toString()); 
      setImeVisibility(false);
      dismissSuggestions();
    } 
  }
  
  boolean onSuggestionsKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    if (this.mSearchable != null && this.mSuggestionsAdapter != null && paramKeyEvent.getAction() == 0 && KeyEventCompat.hasNoModifiers(paramKeyEvent)) {
      if (paramInt == 66 || paramInt == 84 || paramInt == 61)
        return onItemClicked(this.mSearchSrcTextView.getListSelection(), 0, (String)null); 
      if (paramInt == 21 || paramInt == 22) {
        if (paramInt == 21) {
          paramInt = 0;
          this.mSearchSrcTextView.setSelection(paramInt);
          this.mSearchSrcTextView.setListSelection(0);
          this.mSearchSrcTextView.clearListSelection();
          HIDDEN_METHOD_INVOKER.ensureImeVisible(this.mSearchSrcTextView, true);
          return true;
        } 
        paramInt = this.mSearchSrcTextView.length();
        this.mSearchSrcTextView.setSelection(paramInt);
        this.mSearchSrcTextView.setListSelection(0);
        this.mSearchSrcTextView.clearListSelection();
        HIDDEN_METHOD_INVOKER.ensureImeVisible(this.mSearchSrcTextView, true);
        return true;
      } 
      if (paramInt == 19 && this.mSearchSrcTextView.getListSelection() == 0)
        return false; 
    } 
    return false;
  }
  
  void onTextChanged(CharSequence paramCharSequence) {
    boolean bool1;
    boolean bool2 = true;
    Editable editable = this.mSearchSrcTextView.getText();
    this.mUserQuery = (CharSequence)editable;
    if (!TextUtils.isEmpty((CharSequence)editable)) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    updateSubmitButton(bool1);
    if (!bool1) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    updateVoiceButton(bool1);
    updateCloseButton();
    updateSubmitArea();
    if (this.mOnQueryChangeListener != null && !TextUtils.equals(paramCharSequence, this.mOldQueryText))
      this.mOnQueryChangeListener.onQueryTextChange(paramCharSequence.toString()); 
    this.mOldQueryText = paramCharSequence.toString();
  }
  
  void onTextFocusChanged() {
    updateViewsVisibility(isIconified());
    postUpdateFocusedState();
    if (this.mSearchSrcTextView.hasFocus())
      forceSuggestionQuery(); 
  }
  
  void onVoiceClicked() {
    if (this.mSearchable != null) {
      SearchableInfo searchableInfo = this.mSearchable;
      try {
        if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
          Intent intent = createVoiceWebSearchIntent(this.mVoiceWebSearchIntent, searchableInfo);
          getContext().startActivity(intent);
          return;
        } 
      } catch (ActivityNotFoundException activityNotFoundException) {
        Log.w("SearchView", "Could not find voice search activity");
        return;
      } 
      if (activityNotFoundException.getVoiceSearchLaunchRecognizer()) {
        Intent intent = createVoiceAppSearchIntent(this.mVoiceAppSearchIntent, (SearchableInfo)activityNotFoundException);
        getContext().startActivity(intent);
        return;
      } 
    } 
  }
  
  public void onWindowFocusChanged(boolean paramBoolean) {
    super.onWindowFocusChanged(paramBoolean);
    postUpdateFocusedState();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect) {
    if (!this.mClearingFocus && isFocusable()) {
      if (!isIconified()) {
        boolean bool = this.mSearchSrcTextView.requestFocus(paramInt, paramRect);
        if (bool)
          updateViewsVisibility(false); 
        return bool;
      } 
      return super.requestFocus(paramInt, paramRect);
    } 
    return false;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setAppSearchData(Bundle paramBundle) {
    this.mAppSearchData = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean) {
    if (paramBoolean) {
      onCloseClicked();
      return;
    } 
    onSearchClicked();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean) {
    if (this.mIconifiedByDefault == paramBoolean)
      return; 
    this.mIconifiedByDefault = paramBoolean;
    updateViewsVisibility(paramBoolean);
    updateQueryHint();
  }
  
  public void setImeOptions(int paramInt) {
    this.mSearchSrcTextView.setImeOptions(paramInt);
  }
  
  void setImeVisibility(boolean paramBoolean) {
    if (paramBoolean) {
      post(this.mShowImeRunnable);
      return;
    } 
    removeCallbacks(this.mShowImeRunnable);
    InputMethodManager inputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    if (inputMethodManager != null) {
      inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
      return;
    } 
  }
  
  public void setInputType(int paramInt) {
    this.mSearchSrcTextView.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt) {
    this.mMaxWidth = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(SearchView$OnCloseListener paramSearchView$OnCloseListener) {
    this.mOnCloseListener = paramSearchView$OnCloseListener;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener) {
    this.mOnQueryTextFocusChangeListener = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(SearchView$OnQueryTextListener paramSearchView$OnQueryTextListener) {
    this.mOnQueryChangeListener = paramSearchView$OnQueryTextListener;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener) {
    this.mOnSearchClickListener = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(SearchView$OnSuggestionListener paramSearchView$OnSuggestionListener) {
    this.mOnSuggestionListener = paramSearchView$OnSuggestionListener;
  }
  
  public void setQuery(CharSequence paramCharSequence, boolean paramBoolean) {
    this.mSearchSrcTextView.setText(paramCharSequence);
    if (paramCharSequence != null) {
      this.mSearchSrcTextView.setSelection(this.mSearchSrcTextView.length());
      this.mUserQuery = paramCharSequence;
    } 
    if (paramBoolean && !TextUtils.isEmpty(paramCharSequence))
      onSubmitQuery(); 
  }
  
  public void setQueryHint(@Nullable CharSequence paramCharSequence) {
    this.mQueryHint = paramCharSequence;
    updateQueryHint();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean) {
    this.mQueryRefinement = paramBoolean;
    if (this.mSuggestionsAdapter instanceof SuggestionsAdapter) {
      boolean bool;
      SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter)this.mSuggestionsAdapter;
      if (paramBoolean) {
        bool = true;
      } else {
        bool = true;
      } 
      suggestionsAdapter.setQueryRefinement(bool);
    } 
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo) {
    this.mSearchable = paramSearchableInfo;
    if (this.mSearchable != null) {
      updateSearchAutoComplete();
      updateQueryHint();
    } 
    this.mVoiceButtonEnabled = hasVoiceSearch();
    if (this.mVoiceButtonEnabled)
      this.mSearchSrcTextView.setPrivateImeOptions("nm"); 
    updateViewsVisibility(isIconified());
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean) {
    this.mSubmitButtonEnabled = paramBoolean;
    updateViewsVisibility(isIconified());
  }
  
  public void setSuggestionsAdapter(CursorAdapter paramCursorAdapter) {
    this.mSuggestionsAdapter = paramCursorAdapter;
    this.mSearchSrcTextView.setAdapter((ListAdapter)this.mSuggestionsAdapter);
  }
  
  void updateFocusedState() {
    int[] arrayOfInt;
    if (this.mSearchSrcTextView.hasFocus()) {
      arrayOfInt = FOCUSED_STATE_SET;
    } else {
      arrayOfInt = EMPTY_STATE_SET;
    } 
    Drawable drawable = this.mSearchPlate.getBackground();
    if (drawable != null)
      drawable.setState(arrayOfInt); 
    drawable = this.mSubmitArea.getBackground();
    if (drawable != null)
      drawable.setState(arrayOfInt); 
    invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */