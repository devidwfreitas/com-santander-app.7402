.class Ldih;
.super Ldii;


# instance fields
.field final synthetic d:Ldtv;


# direct methods
.method constructor <init>(Ldhx;Lcpt;Ldtv;)V
    .locals 0

    iput-object p3, p0, Ldih;->d:Ldtv;

    invoke-direct {p0, p2}, Ldii;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 2

    iget-object v0, p0, Ldih;->d:Ldtv;

    const-class v1, Ldtv;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lddr;->a(Ljava/lang/Object;Ljava/lang/String;)Lddp;

    move-result-object v0

    new-instance v1, Ldij;

    invoke-direct {v1, p0}, Ldij;-><init>(Ldao;)V

    invoke-virtual {p1, v0, v1}, Ldjh;->a(Lddp;Ldip;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldih;->a(Ldjh;)V

    return-void
.end method
