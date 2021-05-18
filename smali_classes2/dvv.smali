.class Ldvv;
.super Lebx;


# instance fields
.field final synthetic a:Ldwl;


# direct methods
.method constructor <init>(Ldvb;Ldwl;)V
    .locals 0

    iput-object p2, p0, Ldvv;->a:Ldwl;

    invoke-direct {p0}, Lebx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leey;)V
    .locals 2

    iget-object v0, p0, Ldvv;->a:Ldwl;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldwl;->a(Ledv;)V

    return-void
.end method
