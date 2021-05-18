.class public Ljlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljlr;
.implements Ljls;


# instance fields
.field private a:Ljmj;

.field private b:Ljmv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljmj;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Ljlt;->a:Ljmj;

    .line 22
    new-instance v0, Ljmv;

    invoke-direct {v0, p1, p0}, Ljmv;-><init>(Landroid/content/Context;Ljls;)V

    iput-object v0, p0, Ljlt;->b:Ljmv;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    const-string v0, " "

    const-string v1, "+"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Ljlt;->b:Ljmv;

    invoke-virtual {v1, v0}, Ljmv;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljlt;->b:Ljmv;

    invoke-virtual {v0, p1}, Ljmv;->b(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljlt;->b:Ljmv;

    invoke-virtual {v0, p1}, Ljmv;->c(Ljava/lang/String;)V

    .line 39
    return-void
.end method
