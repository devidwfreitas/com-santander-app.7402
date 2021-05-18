.class public Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/MenuItem;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Lgsm;

.field private n:Lgsn;

.field private o:Z

.field private p:Landroid/content/Context;

.field private final q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b:Z

    .line 55
    iput-boolean v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->o:Z

    .line 165
    new-instance v0, Lgsj;

    invoke-direct {v0, p0}, Lgsj;-><init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V

    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->q:Landroid/view/View$OnClickListener;

    .line 70
    iput-object p1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->p:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->d()V

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a(Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->l:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->p:Landroid/content/Context;

    sget-object v1, Lflv;->MaterialSearchView:[I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setTextColor(I)V

    .line 89
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setHintTextColor(I)V

    .line 93
    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    :cond_3
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setBackIcon(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    :cond_6
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->f()V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->l:Ljava/lang/CharSequence;

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 182
    :goto_0
    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->m:Lgsm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->k:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->m:Lgsm;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgsm;->b(Ljava/lang/String;)Z

    .line 191
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->k:Ljava/lang/CharSequence;

    .line 192
    return-void

    :cond_1
    move v0, v1

    .line 181
    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->i:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public static synthetic b(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->h:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->i:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->p:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040387

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    const v0, 0x7f101178

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    const v1, 0x7f10117a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->j:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    const v1, 0x7f10117b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    .line 115
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    const v1, 0x7f10117c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->h:Landroid/widget/ImageButton;

    .line 116
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    const v1, 0x7f10117d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->i:Landroid/widget/ImageButton;

    .line 117
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    const v1, 0x7f101179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->f:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-direct {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e()V

    .line 125
    sget v0, Lgsb;->b:I

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setAnimationDuration(I)V

    .line 126
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->f:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    new-instance v1, Lgsg;

    invoke-direct {v1, p0}, Lgsg;-><init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 137
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    new-instance v1, Lgsh;

    invoke-direct {v1, p0}, Lgsh;-><init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    new-instance v1, Lgsi;

    invoke-direct {v1, p0}, Lgsi;-><init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Lgsn;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->n:Lgsn;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->m:Lgsm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->m:Lgsm;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lgsm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->c()V

    .line 199
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Lgsl;

    invoke-direct {v0, p0}, Lgsl;-><init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V

    .line 347
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 348
    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->j:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lgsb;->a(Landroid/view/View;Lgsf;)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    iget v2, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->c:I

    invoke-static {v1, v2, v0}, Lgsb;->a(Landroid/view/View;ILgsf;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 207
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 314
    if-eqz p1, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g()V

    .line 323
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b:Z

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->n:Lgsn;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->n:Lgsn;

    invoke-interface {v0}, Lgsn;->a()V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a(Z)V

    .line 304
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 216
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->clearFocus()V

    .line 364
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->n:Lgsn;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->n:Lgsn;

    invoke-interface {v0}, Lgsn;->b()V

    .line 368
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->b:Z

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->d:Z

    .line 390
    invoke-virtual {p0, p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a(Landroid/view/View;)V

    .line 391
    invoke-super {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 392
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->d:Z

    .line 394
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 382
    iget-boolean v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->d:Z

    if-eqz v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .prologue
    .line 299
    iput p1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->c:I

    .line 300
    return-void
.end method

.method public setBackIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 230
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void
.end method

.method public setCursorDrawable(I)V
    .locals 3

    .prologue
    .line 254
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 256
    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v1, "SearchView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 238
    return-void
.end method

.method public setMenuItem(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a:Landroid/view/MenuItem;

    .line 279
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a:Landroid/view/MenuItem;

    new-instance v1, Lgsk;

    invoke-direct {v1, p0}, Lgsk;-><init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 286
    return-void
.end method

.method public setOnQueryTextListener(Lgsm;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->m:Lgsm;

    .line 374
    return-void
.end method

.method public setOnSearchViewListener(Lgsn;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->n:Lgsn;

    .line 378
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 270
    iput-object p1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->l:Ljava/lang/CharSequence;

    .line 272
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->f()V

    .line 275
    :cond_1
    return-void
.end method

.method public setSubmitOnClick(Z)V
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->o:Z

    .line 264
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 234
    return-void
.end method
