.class Llzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Llzt;


# direct methods
.method constructor <init>(Llzt;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Llzu;->a:Llzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Llzu;->a:Llzt;

    invoke-static {v0}, Llzt;->a(Llzt;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 127
    iget-object v0, p0, Llzu;->a:Llzt;

    invoke-static {v0}, Llzt;->b(Llzt;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Llzu;->a:Llzt;

    invoke-virtual {v1}, Llzt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09044e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Llzu;->a:Llzt;

    invoke-static {v0}, Llzt;->b(Llzt;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
