.class Ldhz;
.super Ldii;


# instance fields
.field final synthetic d:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Ldhx;Lcpt;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Ldhz;->d:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Ldii;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 2

    new-instance v0, Ldij;

    invoke-direct {v0, p0}, Ldij;-><init>(Ldao;)V

    iget-object v1, p0, Ldhz;->d:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Ldjh;->a(Landroid/app/PendingIntent;Ldip;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldhz;->a(Ldjh;)V

    return-void
.end method
