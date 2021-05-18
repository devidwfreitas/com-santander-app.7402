.class Llxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llxn;


# direct methods
.method constructor <init>(Llxn;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Llxo;->a:Llxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Llxo;->a:Llxn;

    iget-object v1, p0, Llxo;->a:Llxn;

    invoke-static {v1}, Llxn;->a(Llxn;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llxn;->a(Llxn;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object v0, p0, Llxo;->a:Llxn;

    invoke-static {v0}, Llxn;->b(Llxn;)Llxq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Llxo;->a:Llxn;

    invoke-static {v0}, Llxn;->b(Llxn;)Llxq;

    move-result-object v0

    iget-object v1, p0, Llxo;->a:Llxn;

    invoke-static {v1}, Llxn;->c(Llxn;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llxq;->a(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Llxo;->a:Llxn;

    invoke-virtual {v0}, Llxn;->dismiss()V

    .line 81
    :cond_0
    return-void
.end method
