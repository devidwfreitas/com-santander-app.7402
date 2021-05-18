.class Lmsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmrr;


# instance fields
.field final synthetic a:Lmsd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lmse;


# direct methods
.method constructor <init>(Lmse;Lmsd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lmsf;->c:Lmse;

    iput-object p2, p0, Lmsf;->a:Lmsd;

    iput-object p3, p0, Lmsf;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lmsf;->a:Lmsd;

    invoke-interface {v0}, Lmsd;->b()V

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lmsf;->c:Lmse;

    invoke-static {v0}, Lmse;->a(Lmse;)Lmvv;

    move-result-object v0

    iget-object v1, p0, Lmsf;->b:Ljava/lang/String;

    new-instance v2, Lmsg;

    invoke-direct {v2, p0}, Lmsg;-><init>(Lmsf;)V

    invoke-interface {v0, v1, v2}, Lmvv;->a(Ljava/lang/String;Lmvw;)V

    goto :goto_0
.end method
