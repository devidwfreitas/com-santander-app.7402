.class Ldoe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldkp;

.field final synthetic b:Ldob;


# direct methods
.method constructor <init>(Ldob;Ldkp;)V
    .locals 0

    iput-object p1, p0, Ldoe;->b:Ldob;

    iput-object p2, p0, Ldoe;->a:Ldkp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Ldoe;->b:Ldob;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldoe;->b:Ldob;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldob;->a(Ldob;Z)Z

    iget-object v0, p0, Ldoe;->b:Ldob;

    iget-object v0, v0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldoe;->b:Ldob;

    iget-object v0, v0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Ldky;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldoe;->b:Ldob;

    iget-object v0, v0, Ldob;->a:Ldno;

    iget-object v2, p0, Ldoe;->a:Ldkp;

    invoke-virtual {v0, v2}, Ldno;->a(Ldkp;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
