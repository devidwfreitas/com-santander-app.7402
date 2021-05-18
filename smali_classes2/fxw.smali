.class Lfxw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Z

.field final synthetic b:Lfyd;

.field final synthetic c:Lfxv;


# direct methods
.method constructor <init>(Lfxv;Lfyd;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lfxw;->c:Lfxv;

    iput-object p2, p0, Lfxw;->b:Lfyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x2f

    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    iget-boolean v0, p0, Lfxw;->a:Z

    if-eqz v0, :cond_0

    .line 136
    iput-boolean v2, p0, Lfxw;->a:Z

    .line 160
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_2

    move v0, v1

    .line 140
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[/]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    if-le p4, p3, :cond_3

    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_5

    .line 144
    iget-object v0, p0, Lfxw;->b:Lfyd;

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_1
    iput-boolean v1, p0, Lfxw;->a:Z

    .line 150
    iget-object v1, p0, Lfxw;->b:Lfyd;

    invoke-static {v1}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lfxw;->b:Lfyd;

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lfxw;->b:Lfyd;

    invoke-static {v1}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 159
    :goto_3
    iget-object v0, p0, Lfxw;->b:Lfyd;

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 139
    goto/16 :goto_1

    .line 153
    :cond_3
    iput-boolean v1, p0, Lfxw;->a:Z

    .line 155
    iget-object v1, p0, Lfxw;->b:Lfyd;

    invoke-static {v1}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lfxw;->b:Lfyd;

    invoke-static {v1}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v0, :cond_4

    sub-int/2addr p2, p3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto :goto_2
.end method
