.class Ldve;
.super Lebr;


# instance fields
.field final synthetic a:Ldwj;


# direct methods
.method constructor <init>(Ldvb;Ldwj;)V
    .locals 0

    iput-object p2, p0, Ldve;->a:Ldwj;

    invoke-direct {p0}, Lebr;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leep;)V
    .locals 2

    iget-object v0, p0, Ldve;->a:Ldwj;

    new-instance v1, Ledq;

    invoke-direct {v1, p1}, Ledq;-><init>(Leep;)V

    invoke-interface {v0, v1}, Ldwj;->a(Ledq;)V

    return-void
.end method
