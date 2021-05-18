.class public Lbr/com/santander/uisdk/textview/SantanderCurrencyTextView;
.super Lbr/com/santander/uisdk/textview/SantanderTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbr/com/santander/uisdk/textview/SantanderCurrencyTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderCurrencyTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderCurrencyTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method


# virtual methods
.method public a()Lang;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .prologue
    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 44
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    invoke-static {v0}, Lanx;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-super {p0, v0, p2}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 57
    :cond_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    goto :goto_0
.end method
