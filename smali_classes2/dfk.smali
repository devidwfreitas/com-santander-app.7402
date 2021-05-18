.class Ldfk;
.super Ldfn;


# direct methods
.method constructor <init>(Ldfj;Lcpt;)V
    .locals 0

    invoke-direct {p0, p2}, Ldfn;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldfo;)V
    .locals 2

    invoke-virtual {p1}, Ldfo;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldfs;

    new-instance v1, Ldfl;

    invoke-direct {v1, p0}, Ldfl;-><init>(Ldao;)V

    invoke-interface {v0, v1}, Ldfs;->a(Ldfp;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldfo;

    invoke-virtual {p0, p1}, Ldfk;->a(Ldfo;)V

    return-void
.end method
