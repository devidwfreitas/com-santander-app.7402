.class public Ljit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljfp;
.implements Ljis;


# instance fields
.field private a:Ljgx;

.field private b:Landroid/app/Activity;

.field private c:Ljfo;


# direct methods
.method public constructor <init>(Ljgx;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljit;->a:Ljgx;

    .line 28
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Ljit;->b:Landroid/app/Activity;

    .line 29
    new-instance v0, Ljfq;

    iget-object v1, p0, Ljit;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Ljfq;-><init>(Landroid/app/Activity;Ljfp;)V

    iput-object v0, p0, Ljit;->c:Ljfo;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljds;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljel;

    invoke-direct {v0}, Ljel;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljds;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljds;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljel;->a(Ljava/lang/String;)V

    .line 43
    :cond_0
    iget-object v1, p0, Ljit;->a:Ljgx;

    invoke-interface {v1, v0}, Ljgx;->a(Ljel;)V

    .line 44
    return-void
.end method

.method public a(Ljdx;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljit;->c:Ljfo;

    invoke-interface {v0, p1}, Ljfo;->a(Ljdx;)V

    .line 35
    return-void
.end method

.method public b(Ljds;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Ljit;->a:Ljgx;

    invoke-virtual {p1}, Ljds;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljgx;->a(Ljava/lang/String;)V

    .line 49
    return-void
.end method
