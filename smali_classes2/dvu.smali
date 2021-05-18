.class Ldvu;
.super Lecy;


# instance fields
.field final synthetic a:Ldws;


# direct methods
.method constructor <init>(Ldvb;Ldws;)V
    .locals 0

    iput-object p2, p0, Ldvu;->a:Ldws;

    invoke-direct {p0}, Lecy;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leey;)V
    .locals 2

    iget-object v0, p0, Ldvu;->a:Ldws;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldws;->a(Ledv;)V

    return-void
.end method

.method public b(Leey;)V
    .locals 2

    iget-object v0, p0, Ldvu;->a:Ldws;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldws;->c(Ledv;)V

    return-void
.end method

.method public c(Leey;)V
    .locals 2

    iget-object v0, p0, Ldvu;->a:Ldws;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldws;->b(Ledv;)V

    return-void
.end method
