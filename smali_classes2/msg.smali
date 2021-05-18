.class Lmsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmvw;


# instance fields
.field final synthetic a:Lmsf;


# direct methods
.method constructor <init>(Lmsf;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lmsg;->a:Lmsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmsg;->a:Lmsf;

    iget-object v0, v0, Lmsf;->a:Lmsd;

    invoke-interface {v0, p1}, Lmsd;->a(Ljava/lang/Exception;)V

    .line 74
    return-void
.end method

.method public a(Lmrp;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lmsg;->a:Lmsf;

    iget-object v0, v0, Lmsf;->c:Lmse;

    invoke-static {v0, p1}, Lmse;->a(Lmse;Lmrp;)Lmrp;

    .line 68
    iget-object v0, p0, Lmsg;->a:Lmsf;

    iget-object v0, v0, Lmsf;->c:Lmse;

    iget-object v1, p0, Lmsg;->a:Lmsf;

    iget-object v1, v1, Lmsf;->a:Lmsd;

    invoke-static {v0, v1}, Lmse;->a(Lmse;Lmsd;)V

    .line 69
    return-void
.end method
