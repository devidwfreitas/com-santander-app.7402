.class final Lmhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lmhe;->d:Landroid/widget/EditText;

    iput-object p2, p0, Lmhe;->e:Ljava/lang/String;

    iput-object p3, p0, Lmhe;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lmhe;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lmhe;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1

    .line 147
    iget-object v0, p0, Lmhe;->e:Ljava/lang/String;

    iput-object v0, p0, Lmhe;->c:Ljava/lang/String;

    .line 151
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lmhe;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_0

    .line 153
    invoke-static {v0}, Lmhb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    const-string v2, ""

    .line 156
    iget-boolean v3, p0, Lmhe;->a:Z

    if-eqz v3, :cond_2

    .line 157
    iput-object v0, p0, Lmhe;->b:Ljava/lang/String;

    .line 158
    iput-boolean v1, p0, Lmhe;->a:Z

    .line 177
    :goto_1
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lmhe;->f:Ljava/lang/String;

    iput-object v0, p0, Lmhe;->c:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_2
    iget-object v3, p0, Lmhe;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_2
    if-ge v3, v5, :cond_4

    aget-char v6, v4, v3

    .line 163
    const/16 v7, 0x23

    if-eq v6, v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lmhe;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 168
    :cond_3
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 169
    :catch_0
    move-exception v0

    .line 174
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmhe;->a:Z

    .line 175
    iget-object v0, p0, Lmhe;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lmhe;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1
.end method
