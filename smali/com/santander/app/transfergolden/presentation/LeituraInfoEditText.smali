.class public Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/support/design/widget/TextInputLayout;

.field private f:Landroid/support/design/widget/TextInputEditText;

.field private g:Landroid/support/v7/widget/AppCompatSpinner;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lmtp;

.field private k:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->h:I

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->h:I

    .line 56
    invoke-direct {p0, p2}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->h:I

    .line 61
    invoke-direct {p0, p2}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/support/v7/widget/AppCompatSpinner;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0403a4

    invoke-static {v0, v1, p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    const v0, 0x7f1011ce

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->c:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f1011cf

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f100467

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e:Landroid/support/design/widget/TextInputLayout;

    .line 70
    const v0, 0x7f100468

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    .line 71
    const v0, 0x7f100055

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    .line 73
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v1, Lmtl;

    invoke-direct {v1, p0}, Lmtl;-><init>(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    new-instance v0, Lmtm;

    invoke-direct {v0, p0}, Lmtm;-><init>(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Lmtn;

    invoke-direct {v1, p0}, Lmtn;-><init>(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Landroid/util/AttributeSet;)V

    .line 123
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->invalidate()V

    .line 124
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Lmtp;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->j:Lmtp;

    return-object v0
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lflv;->LeituraInfoEditText:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 134
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 138
    iget-object v4, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    packed-switch v3, :pswitch_data_0

    .line 150
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputEditText;->setInputType(I)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    :cond_0
    return-void

    .line 143
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputEditText;->setInputType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 147
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic c(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->k:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    const/4 v0, 0x2

    iput v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->h:I

    .line 162
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputEditText;->setInputType(I)V

    .line 164
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setVisibility(I)V

    .line 165
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputEditText;->setSelection(I)V

    goto :goto_0
.end method

.method public a(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lmtp;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->j:Lmtp;

    .line 226
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 185
    invoke-direct {p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e()V

    .line 186
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->g:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 209
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 210
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 211
    iget-object v1, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 212
    return-void
.end method

.method public b(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public c()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->f:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->e:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lmto;

    invoke-direct {v0, p0, p1}, Lmto;-><init>(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;Landroid/view/View$OnFocusChangeListener;)V

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->k:Landroid/view/View$OnFocusChangeListener;

    .line 238
    return-void
.end method
