.class Llbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Llbc;


# direct methods
.method constructor <init>(Llbc;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Llbf;->b:Llbc;

    iput-object p2, p0, Llbf;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Llbf;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Llbf;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    const v1, 0x7f100798

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Llbf;->b:Llbc;

    invoke-static {v0}, Llbc;->e(Llbc;)Llbg;

    move-result-object v0

    invoke-static {v0, v2}, Llbg;->a(Llbg;Z)Z

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Llbf;->b:Llbc;

    invoke-static {v0}, Llbc;->e(Llbc;)Llbg;

    move-result-object v0

    invoke-virtual {v0}, Llbg;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Llbf;->b:Llbc;

    invoke-static {v0}, Llbc;->f(Llbc;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lmhj;->e(Landroid/view/View;)V

    .line 129
    :goto_1
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Llbf;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    const v1, 0x7f10079a

    if-ne v0, v1, :cond_2

    .line 118
    iget-object v0, p0, Llbf;->b:Llbc;

    invoke-static {v0}, Llbc;->e(Llbc;)Llbg;

    move-result-object v0

    invoke-static {v0, v2}, Llbg;->b(Llbg;Z)Z

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Llbf;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    const v1, 0x7f100799

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Llbf;->b:Llbc;

    invoke-static {v0}, Llbc;->e(Llbc;)Llbg;

    move-result-object v0

    invoke-static {v0, v2}, Llbg;->c(Llbg;Z)Z

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Llbf;->b:Llbc;

    invoke-static {v0}, Llbc;->f(Llbc;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lmhj;->d(Landroid/view/View;)V

    goto :goto_1
.end method
