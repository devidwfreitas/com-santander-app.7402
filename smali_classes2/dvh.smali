.class Ldvh;
.super Lebo;


# instance fields
.field final synthetic a:Ldwi;


# direct methods
.method constructor <init>(Ldvb;Ldwi;)V
    .locals 0

    iput-object p2, p0, Ldvh;->a:Ldwi;

    invoke-direct {p0}, Lebo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leem;)V
    .locals 2

    iget-object v0, p0, Ldvh;->a:Ldwi;

    new-instance v1, Ledp;

    invoke-direct {v1, p1}, Ledp;-><init>(Leem;)V

    invoke-interface {v0, v1}, Ldwi;->a(Ledp;)V

    return-void
.end method
