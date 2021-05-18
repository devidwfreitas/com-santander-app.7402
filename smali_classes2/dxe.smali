.class Ldxe;
.super Lecs;


# instance fields
.field final synthetic a:Ldxk;


# direct methods
.method constructor <init>(Ldxd;Ldxk;)V
    .locals 0

    iput-object p2, p0, Ldxe;->a:Ldxk;

    invoke-direct {p0}, Lecs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldyo;)V
    .locals 2

    iget-object v0, p0, Ldxe;->a:Ldxk;

    new-instance v1, Ldvb;

    invoke-direct {v1, p1}, Ldvb;-><init>(Ldyo;)V

    invoke-interface {v0, v1}, Ldxk;->a(Ldvb;)V

    return-void
.end method
