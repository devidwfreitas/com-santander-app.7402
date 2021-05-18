.class Ldvz;
.super Lede;


# instance fields
.field final synthetic a:Ldwu;


# direct methods
.method constructor <init>(Ldvb;Ldwu;)V
    .locals 0

    iput-object p2, p0, Ldvz;->a:Ldwu;

    invoke-direct {p0}, Lede;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcwx;)V
    .locals 2

    iget-object v1, p0, Ldvz;->a:Ldwu;

    invoke-static {p1}, Lcxo;->a(Lcwx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Ldwu;->a(Landroid/location/Location;)V

    return-void
.end method
