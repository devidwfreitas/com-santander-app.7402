.class Ljtw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljtv;


# direct methods
.method constructor <init>(Ljtv;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ljtw;->a:Ljtv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Ljtw;->a:Ljtv;

    invoke-static {v0}, Ljtv;->a(Ljtv;)V

    .line 92
    iget-object v0, p0, Ljtw;->a:Ljtv;

    invoke-static {v0}, Ljtv;->b(Ljtv;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtw;->a:Ljtv;

    invoke-static {v0}, Ljtv;->b(Ljtv;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Ljtw;->a:Ljtv;

    invoke-static {v0}, Ljtv;->b(Ljtv;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 94
    iget-object v0, p0, Ljtw;->a:Ljtv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljtv;->a(Ljtv;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 96
    :cond_0
    return-void
.end method
