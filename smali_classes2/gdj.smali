.class public Lgdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbg;
.implements Lgdi;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lgcd;

.field private c:Lgbf;


# direct methods
.method public constructor <init>(Lgcd;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lgdj;->b:Lgcd;

    .line 28
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lgdj;->a:Landroid/app/Activity;

    .line 29
    new-instance v0, Lgbh;

    iget-object v1, p0, Lgdj;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lgbh;-><init>(Lgbg;Landroid/app/Activity;)V

    iput-object v0, p0, Lgdj;->c:Lgbf;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgdj;->b:Lgcd;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lgdj;->b:Lgcd;

    invoke-interface {v0}, Lgcd;->a()V

    .line 37
    :cond_0
    return-void
.end method

.method public a(Lgaq;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lgdj;->c:Lgbf;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lgdj;->c:Lgbf;

    invoke-interface {v0, p1}, Lgbf;->a(Lgaq;)V

    .line 44
    :cond_0
    return-void
.end method

.method public a(Lgvb;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgdj;->b:Lgcd;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lgdj;->b:Lgcd;

    invoke-interface {v0, p1}, Lgcd;->a(Lgvb;)V

    .line 76
    :cond_0
    return-void
.end method

.method public b(Lgaq;)V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p1}, Lgaq;->a()Lgaq;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lgaq;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgaq;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->q(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lgaq;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->s(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lgaq;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->t(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lgaq;->J()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JPY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lgaq;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lgaq;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->A(Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-virtual {v0}, Lgaq;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->B(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lgaq;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->D(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lgaq;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->G(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lgaq;->I()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->H(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lgaq;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->C(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lgaq;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->E(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lgaq;->G()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->F(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lgdj;->b:Lgcd;

    invoke-interface {v1, v0}, Lgcd;->a(Lgaq;)V

    .line 69
    return-void

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lgaq;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lgaq;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaq;->A(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lgvb;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgdj;->b:Lgcd;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lgdj;->b:Lgcd;

    invoke-interface {v0, p1}, Lgcd;->a(Lgvb;)V

    .line 83
    :cond_0
    return-void
.end method
