.class final Lany;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lany;->c:Ljava/lang/String;

    iput-object p2, p0, Lany;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lany;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    const-string v1, ""

    .line 33
    iget-boolean v0, p0, Lany;->a:Z

    if-eqz v0, :cond_0

    .line 34
    iput-object v5, p0, Lany;->b:Ljava/lang/String;

    .line 35
    iput-boolean v3, p0, Lany;->a:Z

    .line 76
    :goto_0
    return-void

    :cond_0
    move v2, v3

    move v0, v3

    .line 40
    :goto_1
    iget-object v6, p0, Lany;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 41
    iget-object v6, p0, Lany;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 42
    const/16 v7, 0x23

    if-eq v6, v7, :cond_2

    .line 43
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v0, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lany;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 40
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 51
    :cond_2
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 52
    :catch_0
    move-exception v0

    .line 59
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-object v2, v1

    move v1, v0

    move v0, v3

    .line 62
    :goto_3
    invoke-static {v1}, Lanx;->a(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lany;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_4

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-object v2, v1

    move v1, v0

    move v0, v4

    .line 65
    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    if-eqz v0, :cond_5

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 73
    :cond_5
    :goto_4
    iput-boolean v4, p0, Lany;->a:Z

    .line 74
    iget-object v0, p0, Lany;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lany;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    goto :goto_4
.end method
