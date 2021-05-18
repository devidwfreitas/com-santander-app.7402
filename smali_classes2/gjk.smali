.class public Lgjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgij;
.implements Lgjj;


# instance fields
.field private a:Lgiy;

.field private b:Lgii;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lgiy;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lgjk;->a:Lgiy;

    move-object v0, p1

    .line 28
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lgjk;->c:Landroid/app/Activity;

    .line 29
    new-instance v0, Lgik;

    iget-object v1, p0, Lgjk;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lgik;-><init>(Landroid/app/Activity;Lgij;)V

    iput-object v0, p0, Lgjk;->b:Lgii;

    .line 31
    invoke-interface {p1}, Lgiy;->a()V

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lghw;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lgjk;->b:Lgii;

    invoke-interface {v0, p1}, Lgii;->a(Lghw;)V

    .line 38
    return-void
.end method

.method public a(Lgid;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgjk;->a:Lgiy;

    invoke-interface {v0, p1}, Lgiy;->a(Lgid;)V

    .line 43
    return-void
.end method

.method public b(Lgid;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lgjk;->a:Lgiy;

    invoke-interface {v0, p1}, Lgiy;->b(Lgid;)V

    .line 48
    return-void
.end method
