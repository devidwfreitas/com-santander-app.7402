.class public Lmcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/SliderValue;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 207
    :try_start_0
    const-string v0, "[^-?0-9]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Lmcq;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_1

    .line 195
    iget-object v1, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1, v3}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->a(Lcom/santander/app/seguros/ui/widgets/SliderValue;Z)Z

    .line 196
    iget-object v1, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->f(Lcom/santander/app/seguros/ui/widgets/SliderValue;)V

    .line 197
    iget-object v1, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0,0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->j(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->k(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    iget-object v0, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->h(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmcq;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->k(Lcom/santander/app/seguros/ui/widgets/SliderValue;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
