.class public Liyw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ActivityManager;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;Landroid/app/ActivityManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Liyw;->c:Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;

    iput-object p2, p0, Liyw;->a:Landroid/app/ActivityManager;

    iput-object p3, p0, Liyw;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Liyw;->a:Landroid/app/ActivityManager;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 126
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    const-string v2, "com.android.systemui:screenshot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Liyw;->c:Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;)Ljan;

    move-result-object v0

    invoke-interface {v0}, Ljan;->a()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Liyw;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method
