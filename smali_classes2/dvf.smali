.class Ldvf;
.super Ldys;


# instance fields
.field final synthetic a:Ldxa;


# direct methods
.method constructor <init>(Ldvb;Ldxa;)V
    .locals 0

    iput-object p2, p0, Ldvf;->a:Ldxa;

    invoke-direct {p0}, Ldys;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldvf;->a:Ldxa;

    invoke-interface {v0}, Ldxa;->a()V

    return-void
.end method

.method public a(Lecf;)V
    .locals 2

    iget-object v0, p0, Ldvf;->a:Ldxa;

    new-instance v1, Ldvg;

    invoke-direct {v1, p0, p1}, Ldvg;-><init>(Ldvf;Lecf;)V

    invoke-interface {v0, v1}, Ldxa;->a(Ldxb;)V

    return-void
.end method
