.class Llbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llbc;


# direct methods
.method constructor <init>(Llbc;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Llbe;->a:Llbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Llbe;->a:Llbc;

    invoke-static {v0}, Llbc;->a(Llbc;)Llbh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Llbe;->a:Llbc;

    invoke-static {v0}, Llbc;->b(Llbc;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Llbe;->a:Llbc;

    invoke-static {v1}, Llbc;->c(Llbc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Llbe;->a:Llbc;

    invoke-static {v2}, Llbc;->d(Llbc;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Llbe;->a:Llbc;

    invoke-static {v3}, Llbc;->a(Llbc;)Llbh;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Llbh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Llbe;->a:Llbc;

    invoke-virtual {v0}, Llbc;->dismiss()V

    .line 103
    return-void
.end method
