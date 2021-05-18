.class public Laax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;


# direct methods
.method public constructor <init>(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    .line 68
    iget-object v0, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    :try_start_0
    iget-object v0, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v2}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->d(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    .line 78
    iget-object v2, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v2}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 80
    iget-object v3, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v3}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->d(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Ljava/text/DecimalFormat;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v3, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v3}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 86
    sub-int v0, v1, v0

    add-int/2addr v0, v2

    .line 87
    if-lez v0, :cond_0

    iget-object v1, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    iget-object v0, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    :goto_1
    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    iget-object v0, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laax;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->c(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
