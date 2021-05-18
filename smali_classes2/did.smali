.class Ldid;
.super Ldii;


# direct methods
.method constructor <init>(Ldhx;Lcpt;)V
    .locals 0

    invoke-direct {p0, p2}, Ldii;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 1

    new-instance v0, Ldij;

    invoke-direct {v0, p0}, Ldij;-><init>(Ldao;)V

    invoke-virtual {p1, v0}, Ldjh;->a(Ldip;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldid;->a(Ldjh;)V

    return-void
.end method
