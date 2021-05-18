.class public Lhsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsi;


# instance fields
.field private a:Lhrh;

.field private b:Lhqa;


# direct methods
.method public constructor <init>(Lhrh;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lhsj;->a:Lhrh;

    .line 25
    new-instance v0, Lhqd;

    invoke-direct {v0}, Lhqd;-><init>()V

    iput-object v0, p0, Lhsj;->b:Lhqa;

    .line 26
    return-void
.end method

.method static synthetic a(Lhsj;)Lhrh;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lhsj;->a:Lhrh;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lhsj;->a:Lhrh;

    iget-object v1, p0, Lhsj;->b:Lhqa;

    invoke-interface {v1}, Lhqa;->a()Lhxq;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrh;->a(Lhxq;)V

    .line 69
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lhsj;->b:Lhqa;

    invoke-interface {v0}, Lhqa;->b()Ljava/util/List;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lhsj;->a:Lhrh;

    invoke-interface {v1, v0}, Lhrh;->a(Ljava/util/List;)V

    .line 74
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lhsj;->e()V

    .line 31
    invoke-direct {p0}, Lhsj;->f()V

    .line 32
    invoke-virtual {p0}, Lhsj;->d()V

    .line 33
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lhsj;->a:Lhrh;

    invoke-interface {v0}, Lhrh;->g()V

    .line 43
    iget-object v0, p0, Lhsj;->b:Lhqa;

    new-instance v1, Lhsk;

    invoke-direct {v1, p0}, Lhsk;-><init>(Lhsj;)V

    invoke-interface {v0, v1}, Lhqa;->a(Lhqc;)V

    .line 56
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lhsj;->b:Lhqa;

    invoke-interface {v0}, Lhqa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lhsj;->a:Lhrh;

    invoke-interface {v0}, Lhrh;->e()V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lhsj;->a:Lhrh;

    invoke-interface {v0}, Lhrh;->f()V

    goto :goto_0
.end method
