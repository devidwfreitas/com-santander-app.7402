.class Ldbr;
.super Ldcn;


# instance fields
.field final synthetic a:Ldbp;


# direct methods
.method constructor <init>(Ldbp;Ldcl;)V
    .locals 0

    iput-object p1, p0, Ldbr;->a:Ldbp;

    invoke-direct {p0, p2}, Ldcn;-><init>(Ldcl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ldbr;->a:Ldbp;

    invoke-static {v0}, Ldbp;->a(Ldbp;)Ldcm;

    move-result-object v0

    iget-object v0, v0, Ldcm;->j:Lddh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lddh;->a(Landroid/os/Bundle;)V

    return-void
.end method
