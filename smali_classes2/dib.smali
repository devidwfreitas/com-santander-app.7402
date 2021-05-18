.class Ldib;
.super Ldii;


# instance fields
.field final synthetic d:Z


# direct methods
.method constructor <init>(Ldhx;Lcpt;Z)V
    .locals 0

    iput-boolean p3, p0, Ldib;->d:Z

    invoke-direct {p0, p2}, Ldii;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 1

    iget-boolean v0, p0, Ldib;->d:Z

    invoke-virtual {p1, v0}, Ldjh;->a(Z)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Ldib;->a(Lcqg;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldib;->a(Ldjh;)V

    return-void
.end method
