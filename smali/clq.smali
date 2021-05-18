.class Lclq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcms;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lclp;


# direct methods
.method constructor <init>(Lclp;Landroid/content/Context;Lcms;ZZZ)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lclq;->f:Lclp;

    iput-object p2, p0, Lclq;->a:Landroid/content/Context;

    iput-object p3, p0, Lclq;->b:Lcms;

    iput-boolean p4, p0, Lclq;->c:Z

    iput-boolean p5, p0, Lclq;->d:Z

    iput-boolean p6, p0, Lclq;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lclq;->a:Landroid/content/Context;

    iget-object v1, p0, Lclq;->b:Lcms;

    invoke-static {v0, v1}, Lcmn;->a(Landroid/content/Context;Lcms;)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    iget-object v0, p0, Lclq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcmn;->a(Landroid/content/Context;)Lcmh;

    move-result-object v0

    .line 34
    iget-object v2, p0, Lclq;->b:Lcms;

    iget-boolean v3, p0, Lclq;->c:Z

    iget-boolean v4, p0, Lclq;->d:Z

    iget-boolean v5, p0, Lclq;->e:Z

    invoke-virtual/range {v0 .. v5}, Lcmh;->a(Ljava/lang/String;Lcms;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
