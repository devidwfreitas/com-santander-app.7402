.class Lcxc;
.super Ljava/lang/Object;

# interfaces
.implements Lcxp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcxp",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcxb;


# direct methods
.method constructor <init>(Lcxb;)V
    .locals 0

    iput-object p1, p0, Lcxc;->a:Lcxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcxa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcxc;->a:Lcxb;

    invoke-static {v0, p1}, Lcxb;->a(Lcxb;Lcxa;)Lcxa;

    iget-object v0, p0, Lcxc;->a:Lcxb;

    invoke-static {v0}, Lcxb;->a(Lcxb;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxj;

    iget-object v2, p0, Lcxc;->a:Lcxb;

    invoke-static {v2}, Lcxb;->b(Lcxb;)Lcxa;

    move-result-object v2

    invoke-interface {v0, v2}, Lcxj;->a(Lcxa;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcxc;->a:Lcxb;

    invoke-static {v0}, Lcxb;->a(Lcxb;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcxc;->a:Lcxb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcxb;->a(Lcxb;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
