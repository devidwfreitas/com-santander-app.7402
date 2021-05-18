.class Ldvc;
.super Lebu;


# instance fields
.field final synthetic a:Ldwk;


# direct methods
.method constructor <init>(Ldvb;Ldwk;)V
    .locals 0

    iput-object p2, p0, Ldvc;->a:Ldwk;

    invoke-direct {p0}, Lebu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldvc;->a:Ldwk;

    invoke-interface {v0}, Ldwk;->a()V

    return-void
.end method

.method public a(Lees;)V
    .locals 2

    iget-object v0, p0, Ldvc;->a:Ldwk;

    new-instance v1, Ledr;

    invoke-direct {v1, p1}, Ledr;-><init>(Lees;)V

    invoke-interface {v0, v1}, Ldwk;->a(Ledr;)V

    return-void
.end method
