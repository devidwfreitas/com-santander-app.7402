.class final Lmhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lmhc;->e:Landroid/widget/EditText;

    iput-object p2, p0, Lmhc;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lmhc;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lmhc;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmhc;->d:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lmhc;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lmhc;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 52
    iget-object v1, p0, Lmhc;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    const-string v1, ""

    .line 55
    iget-boolean v2, p0, Lmhc;->a:Z

    if-eqz v2, :cond_1

    .line 56
    iput-object v5, p0, Lmhc;->b:Ljava/lang/String;

    .line 57
    iput-boolean v0, p0, Lmhc;->a:Z

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lmhc;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v2, v0

    move v3, v0

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_1
    if-ge v2, v7, :cond_2

    aget-char v8, v6, v2

    .line 62
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v1

    if-gt v9, v3, :cond_3

    .line 73
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmhc;->a:Z

    .line 74
    iget-object v2, p0, Lmhc;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lmhc;->e:Landroid/widget/EditText;

    add-int v3, v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 65
    :cond_3
    const/16 v9, 0x23

    if-ne v8, v9, :cond_4

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v8, v3, v1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 85
    :cond_5
    add-int v0, v4, v1

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmhc;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmhc;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
