.class Lmfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmfg;


# direct methods
.method constructor <init>(Lmfg;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lmfj;->a:Lmfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lmfj;->a:Lmfg;

    invoke-static {v0}, Lmfg;->a(Lmfg;)Lmfk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lmfj;->a:Lmfg;

    invoke-static {v0}, Lmfg;->a(Lmfg;)Lmfk;

    move-result-object v0

    iget-object v1, p0, Lmfj;->a:Lmfg;

    invoke-static {v1}, Lmfg;->d(Lmfg;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmfk;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lmfj;->a:Lmfg;

    invoke-virtual {v0}, Lmfg;->dismiss()V

    .line 95
    :cond_0
    return-void
.end method
