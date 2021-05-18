.class public Ljvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljtc;
.implements Ljvv;


# instance fields
.field private a:Ljtb;

.field private b:Ljuj;

.field private c:Landroid/app/Activity;

.field private d:Ljsr;

.field private e:Ljsp;


# direct methods
.method public constructor <init>(Ljsr;Ljsp;Ljuj;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p3, p0, Ljvw;->b:Ljuj;

    .line 29
    check-cast p3, Landroid/app/Activity;

    iput-object p3, p0, Ljvw;->c:Landroid/app/Activity;

    .line 30
    iput-object p1, p0, Ljvw;->d:Ljsr;

    .line 31
    iput-object p2, p0, Ljvw;->e:Ljsp;

    .line 32
    new-instance v0, Ljtd;

    iget-object v1, p0, Ljvw;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Ljtd;-><init>(Landroid/app/Activity;Ljtc;)V

    iput-object v0, p0, Ljvw;->a:Ljtb;

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Ljvw;->b:Ljuj;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljuj;->a(Lis;)V

    .line 43
    return-void
.end method

.method public a(Lis;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljvw;->b:Ljuj;

    invoke-interface {v0, p1}, Ljuj;->a(Lis;)V

    .line 48
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Ljvw;->a:Ljtb;

    iget-object v1, p0, Ljvw;->d:Ljsr;

    iget-object v2, p0, Ljvw;->e:Ljsp;

    invoke-interface {v0, v1, v2}, Ljtb;->a(Ljsr;Ljsp;)V

    .line 38
    return-void
.end method
