.class Life;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Liez;

.field final synthetic b:Lifd;


# direct methods
.method constructor <init>(Lifd;Liez;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Life;->b:Lifd;

    iput-object p2, p0, Life;->a:Liez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Life;->b:Lifd;

    iget-object v0, v0, Lifd;->b:Lifc;

    invoke-static {v0}, Lifc;->b(Lifc;)Lifw;

    move-result-object v1

    iget-object v0, p0, Life;->a:Liez;

    invoke-virtual {v0}, Liez;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Liev;->SUCCESS:Liev;

    :goto_0
    iget-object v2, p0, Life;->a:Liez;

    .line 48
    invoke-virtual {v2}, Liez;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Life;->b:Lifd;

    iget-boolean v3, v3, Lifd;->a:Z

    .line 46
    invoke-interface {v1, v0, v2, v3}, Lifw;->a(Liev;Ljava/lang/String;Z)V

    .line 49
    return-void

    .line 46
    :cond_0
    sget-object v0, Liev;->FAILURE:Liev;

    goto :goto_0
.end method
