.class final Lnas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 418
    iput-object p1, p0, Lnas;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lnas;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11

    .prologue
    const/16 v9, 0x23

    const/4 v1, 0x0

    .line 423
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-static {v3}, Lnar;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 441
    :goto_0
    const-string v2, ""

    .line 442
    iget-boolean v4, p0, Lnas;->a:Z

    if-eqz v4, :cond_0

    .line 443
    iput-object v3, p0, Lnas;->b:Ljava/lang/String;

    .line 444
    iput-boolean v1, p0, Lnas;->a:Z

    .line 464
    :goto_1
    return-void

    .line 428
    :pswitch_0
    const-string v0, "(##) #####-####"

    goto :goto_0

    .line 431
    :pswitch_1
    const-string v0, "(##) ####-####"

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v0, v1

    move v10, v1

    move-object v1, v2

    move v2, v10

    :goto_2
    if-ge v2, v5, :cond_4

    aget-char v6, v4, v2

    .line 449
    if-eq v6, v9, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lnas;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_2

    :cond_1
    if-eq v6, v9, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lnas;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v0, :cond_3

    .line 450
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 455
    :cond_3
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 456
    :catch_0
    move-exception v0

    .line 461
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnas;->a:Z

    .line 462
    iget-object v0, p0, Lnas;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lnas;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
