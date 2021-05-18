.class public Lcom/santander/app/seguros/ui/widgets/SliderValue;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Landroid/text/TextWatcher;

.field private d:Landroid/text/TextWatcher;

.field private e:Landroid/text/TextWatcher;

.field private f:Lmcr;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/SeekBar;

.field private i:D

.field private j:D

.field private k:D

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/16 v0, 0x32

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a:I

    .line 27
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090b7d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b:Ljava/lang/String;

    .line 42
    iput-wide v2, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    .line 43
    iput-wide v2, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j:D

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->l:Z

    .line 59
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a()V

    .line 60
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b()V

    .line 61
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/SliderValue;D)D
    .locals 1

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->k:D

    return-wide p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/SliderValue;Ljava/lang/Double;)I
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method private a(I)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 259
    div-int/lit8 v0, p1, 0x32

    mul-int/lit8 v0, v0, 0x32

    int-to-double v0, v0

    .line 261
    iget-wide v2, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 262
    iget-wide v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-wide v2, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 264
    iget-wide v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/SliderValue;I)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040394

    invoke-static {v0, v1, p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    const v0, 0x7f1011ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f1011bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h:Landroid/widget/SeekBar;

    .line 69
    return-void
.end method

.method private a(Ljava/lang/Double;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->f:Lmcr;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->f:Lmcr;

    invoke-virtual {v0, p1}, Lmcr;->a(Ljava/lang/Double;)V

    .line 256
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->l:Z

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/SliderValue;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->m:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j:D

    return-wide v0
.end method

.method private b(Ljava/lang/Double;)I
    .locals 6

    .prologue
    .line 271
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j:D

    iget-wide v4, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private b(I)Ljava/lang/Double;
    .locals 6

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j:D

    iget-wide v2, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    sub-double/2addr v0, v2

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/SliderValue;I)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h:Landroid/widget/SeekBar;

    new-instance v1, Lmcm;

    invoke-direct {v1, p0}, Lmcm;-><init>(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c()V

    .line 122
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/SliderValue;Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Ljava/lang/Double;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    invoke-static {v0}, Lmhb;->a(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->e:Landroid/text/TextWatcher;

    .line 126
    new-instance v0, Lmcn;

    invoke-direct {v0, p0}, Lmcn;-><init>(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->d:Landroid/text/TextWatcher;

    .line 180
    new-instance v0, Lmcq;

    invoke-direct {v0, p0}, Lmcq;-><init>(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c:Landroid/text/TextWatcher;

    .line 213
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/widgets/SliderValue;Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c(Ljava/lang/Double;)V

    return-void
.end method

.method private c(Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Ljava/lang/Double;)I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 281
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Lmcr;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->f:Lmcr;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 223
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lmhj;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 225
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->m:Z

    return v0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->e()V

    return-void
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    return-wide v0
.end method

.method public static synthetic j(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c:Landroid/text/TextWatcher;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZLmcr;)V
    .locals 2

    .prologue
    .line 237
    iput-boolean p4, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->l:Z

    .line 238
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->i:D

    .line 239
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j:D

    .line 240
    iput-object p5, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->f:Lmcr;

    .line 241
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->k:D

    .line 243
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->g:Landroid/widget/EditText;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-direct {p0, p3}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c(Ljava/lang/Double;)V

    .line 246
    return-void
.end method

.method public setSliderEnabled(Z)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 250
    return-void
.end method
