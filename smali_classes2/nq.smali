.class Lnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lnp;


# direct methods
.method constructor <init>(Lnp;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lnq;->a:Lnp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnq;->a:Lnp;

    iget-object v0, v0, Lnp;->a:Lno;

    iget-object v0, v0, Lno;->a:Lnl;

    invoke-static {v0}, Lnl;->a(Lnl;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnq;->a:Lnp;

    iget-object v0, v0, Lnp;->a:Lno;

    iget-object v0, v0, Lno;->a:Lnl;

    invoke-virtual {v0}, Lnl;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    return-void
.end method
