.class Ldhr;
.super Ldht;


# instance fields
.field final synthetic d:J

.field final synthetic e:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Ldhq;Lcpt;JLandroid/app/PendingIntent;)V
    .locals 1

    iput-wide p3, p0, Ldhr;->d:J

    iput-object p5, p0, Ldhr;->e:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Ldht;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 3

    iget-wide v0, p0, Ldhr;->d:J

    iget-object v2, p0, Ldhr;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Ldjh;->a(JLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Ldhr;->a(Lcqg;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldhr;->a(Ldjh;)V

    return-void
.end method
