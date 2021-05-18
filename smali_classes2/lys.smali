.class Llys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lltf;


# instance fields
.field final synthetic a:Llyp;


# direct methods
.method constructor <init>(Llyp;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Llys;->a:Llyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Llys;->a:Llyp;

    invoke-static {v0}, Llyp;->d(Llyp;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Llys;->a:Llyp;

    invoke-static {v0}, Llyp;->d(Llyp;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
