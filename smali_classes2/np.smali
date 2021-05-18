.class Lnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lno;


# direct methods
.method constructor <init>(Lno;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lnp;->a:Lno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnp;->a:Lno;

    iget-object v0, v0, Lno;->a:Lnl;

    invoke-static {v0}, Lnl;->a(Lnl;)V

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lnp;->a:Lno;

    iget-object v0, v0, Lno;->a:Lnl;

    invoke-virtual {v0}, Lnl;->e()Lack;

    move-result-object v0

    new-instance v1, Lnq;

    invoke-direct {v1, p0}, Lnq;-><init>(Lnp;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 147
    return-void
.end method
