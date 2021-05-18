.class Lbrj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbrl;

.field final synthetic b:Lbri;


# direct methods
.method constructor <init>(Lbri;Lbrl;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lbrj;->b:Lbri;

    iput-object p2, p0, Lbrj;->a:Lbrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lbrj;->a:Lbrl;

    invoke-virtual {v0}, Lbrl;->d()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lbrj;->b:Lbri;

    iget-object v1, p0, Lbrj;->a:Lbrl;

    invoke-static {v0, v1}, Lbri;->a(Lbri;Lbrl;)V

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbrj;->b:Lbri;

    iget-object v2, p0, Lbrj;->a:Lbrl;

    invoke-static {v1, v2}, Lbri;->a(Lbri;Lbrl;)V

    throw v0
.end method
