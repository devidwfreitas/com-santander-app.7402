.class Liwv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Liwu;


# direct methods
.method constructor <init>(Liwu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Liwv;->b:Liwu;

    iput-object p2, p0, Liwv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 44
    check-cast p1, Liux;

    .line 47
    invoke-virtual {p1}, Liux;->a()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Liux;->a()Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x12174

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    :cond_0
    new-instance v0, Lgyu;

    iget-object v1, p0, Liwv;->b:Liwu;

    .line 51
    invoke-static {v1}, Liwu;->a(Liwu;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0}, Lgyu;->a()V

    .line 53
    iget-object v1, p0, Liwv;->a:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgyu;->a(Ljava/lang/Long;)Lgyv;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v0, v1}, Lgyu;->a(Lgyv;)V

    .line 59
    :cond_1
    invoke-virtual {v0}, Lgyu;->close()V

    .line 60
    iget-object v0, p0, Liwv;->b:Liwu;

    invoke-static {v0}, Liwu;->b(Liwu;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Liwv;->b:Liwu;

    invoke-static {v0}, Liwu;->c(Liwu;)Ljay;

    move-result-object v0

    invoke-virtual {p1}, Liux;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljay;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
