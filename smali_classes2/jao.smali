.class public Ljao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljan;


# instance fields
.field private a:Liyx;

.field private b:Liwd;


# direct methods
.method public constructor <init>(Liyx;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ljao;->a:Liyx;

    .line 27
    new-instance v0, Liwe;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p0, p1}, Liwe;-><init>(Ljan;Landroid/app/Activity;)V

    iput-object v0, p0, Ljao;->b:Liwd;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ljao;->b:Liwd;

    invoke-interface {v0}, Liwd;->a()V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Ljao;->a:Liyx;

    invoke-static {}, Lmxl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liyx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljao;->a:Liyx;

    invoke-interface {v0, p1}, Liyx;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljao;->a:Liyx;

    invoke-interface {v0, p1}, Liyx;->b(Ljava/lang/String;)V

    .line 51
    return-void
.end method
