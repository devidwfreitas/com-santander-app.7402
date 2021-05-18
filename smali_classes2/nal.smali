.class final Lnal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/text/TextWatcher;

.field final synthetic b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Landroid/text/TextWatcher;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 469
    iput-object p1, p0, Lnal;->a:Landroid/text/TextWatcher;

    iput-object p2, p0, Lnal;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const-string v0, ""

    iput-object v0, p0, Lnal;->c:Ljava/lang/String;

    .line 471
    const-string v0, "DDMMAAAA"

    iput-object v0, p0, Lnal;->d:Ljava/lang/String;

    .line 472
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnal;->e:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lnal;->a:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lnal;->a:Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 535
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lnal;->a:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lnal;->a:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 479
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 483
    iget-object v0, p0, Lnal;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 484
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\d.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 485
    iget-object v0, p0, Lnal;->c:Ljava/lang/String;

    const-string v1, "[^\\d.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 487
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v5

    move v0, v2

    .line 489
    :goto_0
    if-gt v1, v2, :cond_0

    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 490
    add-int/lit8 v3, v0, 0x1

    .line 489
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 495
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v10, :cond_4

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnal;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    :goto_1
    const-string v2, "%s/%s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 517
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    .line 518
    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 516
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 520
    if-gez v0, :cond_2

    move v0, v4

    .line 521
    :cond_2
    iput-object v1, p0, Lnal;->c:Ljava/lang/String;

    .line 522
    iget-object v1, p0, Lnal;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lnal;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, p0, Lnal;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lnal;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_9

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 524
    iget-object v0, p0, Lnal;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 525
    iget-object v0, p0, Lnal;->a:Landroid/text/TextWatcher;

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lnal;->a:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 528
    :cond_3
    return-void

    .line 500
    :cond_4
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 501
    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 502
    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 504
    const/16 v6, 0xc

    if-le v1, v6, :cond_5

    const/16 v1, 0xc

    .line 505
    :cond_5
    iget-object v6, p0, Lnal;->e:Ljava/util/Calendar;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 506
    const/16 v6, 0x76c

    if-ge v2, v6, :cond_8

    const/16 v2, 0x76c

    .line 507
    :cond_6
    :goto_3
    iget-object v6, p0, Lnal;->e:Ljava/util/Calendar;

    invoke-virtual {v6, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 512
    iget-object v6, p0, Lnal;->e:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-le v3, v6, :cond_7

    iget-object v3, p0, Lnal;->e:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 513
    :cond_7
    const-string v6, "%02d%02d%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 506
    :cond_8
    const/16 v6, 0x834

    if-le v2, v6, :cond_6

    const/16 v2, 0x834

    goto :goto_3

    .line 523
    :cond_9
    iget-object v0, p0, Lnal;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2
.end method
