.class public Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "SourceFile"


# instance fields
.field private a:Ljava/text/DecimalFormat;

.field private b:Landroid/widget/EditText;

.field private c:Laay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->clearFocus()V

    .line 122
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c:Laay;

    invoke-interface {v0}, Laay;->b()V

    .line 123
    return-void
.end method

.method public static synthetic a(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->requestFocus()Z

    .line 127
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c:Laay;

    invoke-interface {v0}, Laay;->a()V

    .line 128
    return-void
.end method

.method public static synthetic b(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->b()V

    return-void
.end method

.method public static synthetic c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic d(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a:Ljava/text/DecimalFormat;

    return-object v0
.end method


# virtual methods
.method public a(Laay;)V
    .locals 6

    .prologue
    .line 39
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###.##"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "pt"

    const-string v5, "BR"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a:Ljava/text/DecimalFormat;

    .line 40
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 41
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 42
    iput-object p0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->b:Landroid/widget/EditText;

    .line 43
    iput-object p1, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c:Laay;

    .line 45
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->b:Landroid/widget/EditText;

    new-instance v1, Laav;

    invoke-direct {v1, p0}, Laav;-><init>(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 54
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->b:Landroid/widget/EditText;

    new-instance v1, Laaw;

    invoke-direct {v1, p0}, Laaw;-><init>(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->b:Landroid/widget/EditText;

    new-instance v1, Laax;

    invoke-direct {v1, p0}, Laax;-><init>(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    invoke-direct {p0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a()V

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
