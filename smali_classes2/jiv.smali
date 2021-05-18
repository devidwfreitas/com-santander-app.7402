.class public Ljiv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljfe;
.implements Ljiu;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljgy;

.field private c:Ljfd;


# direct methods
.method public constructor <init>(Ljgy;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ljiv;->b:Ljgy;

    .line 27
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Ljiv;->a:Landroid/app/Activity;

    .line 28
    new-instance v0, Ljff;

    iget-object v1, p0, Ljiv;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Ljff;-><init>(Landroid/app/Activity;Ljfe;)V

    iput-object v0, p0, Ljiv;->c:Ljfd;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljiv;->c:Ljfd;

    invoke-interface {v0}, Ljfd;->a()V

    .line 34
    return-void
.end method

.method public a(Ljdo;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljiv;->b:Ljgy;

    invoke-interface {v0, p1}, Ljgy;->a(Ljdo;)V

    .line 39
    return-void
.end method

.method public b(Ljdo;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
