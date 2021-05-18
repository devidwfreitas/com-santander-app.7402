.class Ldbq;
.super Ldcn;


# instance fields
.field final synthetic a:Ldbp;


# direct methods
.method constructor <init>(Ldbp;Ldcl;)V
    .locals 0

    iput-object p1, p0, Ldbq;->a:Ldbp;

    invoke-direct {p0, p2}, Ldcn;-><init>(Ldcl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ldbq;->a:Ldbp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldbp;->a(I)V

    return-void
.end method
