.class Ldvi;
.super Ledk;


# instance fields
.field final synthetic a:Ldww;


# direct methods
.method constructor <init>(Ldvb;Ldww;)V
    .locals 0

    iput-object p2, p0, Ldvi;->a:Ldww;

    invoke-direct {p0}, Ledk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lefb;)V
    .locals 2

    iget-object v0, p0, Ldvi;->a:Ldww;

    new-instance v1, Ledw;

    invoke-direct {v1, p1}, Ledw;-><init>(Lefb;)V

    invoke-interface {v0, v1}, Ldww;->a(Ledw;)V

    return-void
.end method
