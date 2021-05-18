.class Ldhs;
.super Ldht;


# instance fields
.field final synthetic d:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Ldhq;Lcpt;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Ldhs;->d:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Ldht;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 1

    iget-object v0, p0, Ldhs;->d:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Ldjh;->a(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Ldhs;->a(Lcqg;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldhs;->a(Ldjh;)V

    return-void
.end method
