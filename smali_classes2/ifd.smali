.class Lifd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lifc;


# direct methods
.method constructor <init>(Lifc;Z)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lifd;->b:Lifc;

    iput-boolean p2, p0, Lifd;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 36
    check-cast p1, Liez;

    .line 38
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 37
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lifd;->b:Lifc;

    invoke-static {v2}, Lifc;->a(Lifc;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "fingerprintEnable"

    iget-object v4, p0, Lifd;->b:Lifc;

    invoke-static {v4}, Lifc;->a(Lifc;)Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 42
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p1}, Liez;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, p0, Lifd;->a:Z

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Life;

    invoke-direct {v1, p0, p1}, Life;-><init>(Lifd;Liez;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method
