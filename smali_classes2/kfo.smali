.class public Lkfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkfn;


# instance fields
.field private a:Lkek;


# direct methods
.method public constructor <init>(Lkek;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lkfo;->a:Lkek;

    .line 20
    invoke-static {}, Lgmy;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkek;->a(Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lkfo;->a:Lkek;

    invoke-interface {v0}, Lkek;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkfo;->a:Lkek;

    invoke-interface {v0}, Lkek;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lkfo;->a:Lkek;

    invoke-interface {v0}, Lkek;->d()V

    .line 28
    :cond_0
    return-void
.end method
