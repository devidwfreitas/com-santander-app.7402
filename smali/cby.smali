.class Lcby;
.super Lbyu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lcbx;


# direct methods
.method constructor <init>(Lcbx;Lbhl;Lbhl;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcby;->b:Lcbx;

    iput-object p3, p0, Lcby;->a:Lbhl;

    invoke-direct {p0, p2}, Lbyu;-><init>(Lbhl;)V

    return-void
.end method


# virtual methods
.method public a(Lbmr;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcby;->a:Lbhl;

    new-instance v1, Lcca;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcca;-><init>(Landroid/os/Bundle;Lcby;)V

    invoke-interface {v0, v1}, Lbhl;->a(Ljava/lang/Object;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lcby;->a(Lbmr;)V

    goto :goto_0
.end method
