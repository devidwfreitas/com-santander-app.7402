.class Lddm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lddj;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lddl;


# direct methods
.method constructor <init>(Lddl;Lddj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lddm;->c:Lddl;

    iput-object p2, p0, Lddm;->a:Lddj;

    iput-object p3, p0, Lddm;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lddm;->c:Lddl;

    invoke-static {v0}, Lddl;->a(Lddl;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lddm;->a:Lddj;

    iget-object v0, p0, Lddm;->c:Lddl;

    invoke-static {v0}, Lddl;->b(Lddl;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lddm;->c:Lddl;

    invoke-static {v0}, Lddl;->b(Lddl;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lddm;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lddj;->a(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lddm;->c:Lddl;

    invoke-static {v0}, Lddl;->a(Lddl;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lddm;->a:Lddj;

    invoke-virtual {v0}, Lddj;->a()V

    :cond_1
    iget-object v0, p0, Lddm;->c:Lddl;

    invoke-static {v0}, Lddl;->a(Lddl;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lddm;->a:Lddj;

    invoke-virtual {v0}, Lddj;->b()V

    :cond_2
    iget-object v0, p0, Lddm;->c:Lddl;

    invoke-static {v0}, Lddl;->a(Lddl;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lddm;->a:Lddj;

    invoke-virtual {v0}, Lddj;->g()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
