.class Ldic;
.super Ldii;


# instance fields
.field final synthetic d:Landroid/location/Location;


# direct methods
.method constructor <init>(Ldhx;Lcpt;Landroid/location/Location;)V
    .locals 0

    iput-object p3, p0, Ldic;->d:Landroid/location/Location;

    invoke-direct {p0, p2}, Ldii;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 1

    iget-object v0, p0, Ldic;->d:Landroid/location/Location;

    invoke-virtual {p1, v0}, Ldjh;->a(Landroid/location/Location;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Ldic;->a(Lcqg;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldic;->a(Ldjh;)V

    return-void
.end method
