.class Llcz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Llcy;


# direct methods
.method constructor <init>(Llcy;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Llcz;->a:Llcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 68
    if-nez p2, :cond_0

    iget-object v0, p0, Llcz;->a:Llcy;

    invoke-static {v0}, Llcy;->a(Llcy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Llcz;->a:Llcy;

    invoke-static {v0}, Llcy;->b(Llcy;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    iget-object v1, p0, Llcz;->a:Llcy;

    const v2, 0x7f090584

    invoke-virtual {v1, v2}, Llcy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setError(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-void
.end method
