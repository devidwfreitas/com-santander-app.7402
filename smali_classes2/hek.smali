.class final Lhek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 21
    iput-object p1, p0, Lhek;->a:Ljava/lang/String;

    iput-object p2, p0, Lhek;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lhek;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhej;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    const-string v1, ""

    .line 29
    iget-boolean v2, p0, Lhek;->c:Z

    if-eqz v2, :cond_0

    .line 30
    iput-object v3, p0, Lhek;->d:Ljava/lang/String;

    .line 31
    iput-boolean v0, p0, Lhek;->c:Z

    .line 50
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Lhek;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-char v6, v4, v2

    .line 36
    const/16 v7, 0x23

    if-eq v6, v7, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lhek;->d:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :cond_1
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

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 42
    :catch_0
    move-exception v0

    .line 47
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhek;->c:Z

    .line 48
    iget-object v0, p0, Lhek;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lhek;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
