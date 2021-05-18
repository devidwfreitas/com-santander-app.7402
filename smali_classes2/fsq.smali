.class public Lfsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfsj;
.implements Lfsr;


# static fields
.field private static final a:Ljava/lang/String; = "AvaliacaoAppPresenter"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lfsi;

.field private d:Lfsp;

.field private e:Lfso;


# direct methods
.method public constructor <init>(Lfsp;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 26
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lfsq;->b:Landroid/app/Activity;

    .line 27
    iput-object p1, p0, Lfsq;->d:Lfsp;

    .line 28
    new-instance v0, Lfsh;

    iget-object v1, p0, Lfsq;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lfsh;-><init>(Landroid/app/Activity;Lfsj;)V

    iput-object v0, p0, Lfsq;->c:Lfsi;

    .line 30
    invoke-virtual {p0}, Lfsq;->f()V

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lfsq;->d:Lfsp;

    invoke-interface {v0}, Lfsp;->a()V

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfsq;->d:Lfsp;

    invoke-interface {v0, p1}, Lfsp;->a(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lfsq;->d:Lfsp;

    invoke-interface {v0}, Lfsp;->b()V

    .line 70
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lfsq;->c:Lfsi;

    invoke-interface {v0}, Lfsi;->b()V

    .line 37
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lfsq;->c:Lfsi;

    invoke-interface {v0}, Lfsi;->c()V

    .line 43
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lfsq;->c:Lfsi;

    invoke-interface {v0}, Lfsi;->d()V

    .line 49
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lfsq;->c:Lfsi;

    invoke-interface {v0}, Lfsi;->a()V

    .line 59
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lfsq;->d:Lfsp;

    invoke-interface {v0}, Lfsp;->c()V

    .line 75
    return-void
.end method
