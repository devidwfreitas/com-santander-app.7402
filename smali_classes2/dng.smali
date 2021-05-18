.class Ldng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldmw;


# direct methods
.method constructor <init>(Ldmw;J)V
    .locals 0

    iput-object p1, p0, Ldng;->b:Ldmw;

    iput-wide p2, p0, Ldng;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ldng;->b:Ldmw;

    invoke-virtual {v0}, Ldmw;->v()Ldlh;

    move-result-object v0

    iget-object v0, v0, Ldlh;->i:Ldlk;

    iget-wide v2, p0, Ldng;->a:J

    invoke-virtual {v0, v2, v3}, Ldlk;->a(J)V

    iget-object v0, p0, Ldng;->b:Ldmw;

    invoke-virtual {v0}, Ldmw;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Session timeout duration set"

    iget-wide v2, p0, Ldng;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
