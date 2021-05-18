.class public Lmyy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Landroid/widget/EditText;

.field private b:Z

.field private c:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyy;->b:Z

    .line 27
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lmyy;->c:Ljava/text/NumberFormat;

    .line 22
    iput-object p1, p0, Lmyy;->a:Landroid/widget/EditText;

    .line 23
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 33
    iget-boolean v0, p0, Lmyy;->b:Z

    if-eqz v0, :cond_0

    .line 34
    iput-boolean v2, p0, Lmyy;->b:Z

    .line 66
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-boolean v1, p0, Lmyy;->b:Z

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v3, "R$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v4, :cond_1

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_4

    :cond_1
    const-string v3, "."

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v4, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_4

    .line 47
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 50
    const-string v1, "[R$]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[,]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_3
    :try_start_0
    iget-object v1, p0, Lmyy;->c:Ljava/text/NumberFormat;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lmyy;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lmyy;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lmyy;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v0, ""

    goto :goto_0

    :cond_4
    move v1, v2

    .line 44
    goto :goto_1
.end method
