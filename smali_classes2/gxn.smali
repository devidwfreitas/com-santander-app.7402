.class Lgxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgta;

.field final synthetic b:Lgxj;


# direct methods
.method constructor <init>(Lgxj;Lgta;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lgxn;->b:Lgxj;

    iput-object p2, p0, Lgxn;->a:Lgta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 337
    check-cast p1, Lgwy;

    .line 338
    invoke-virtual {p1}, Lgwy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lgxn;->a:Lgta;

    invoke-virtual {v0}, Lgta;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lgxn;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    iget-object v1, p0, Lgxn;->a:Lgta;

    invoke-interface {v0, v1}, Lgxu;->b(Lgta;)V

    .line 343
    :cond_0
    return-void
.end method
