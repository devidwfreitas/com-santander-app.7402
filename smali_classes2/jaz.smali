.class public Ljaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljay;


# instance fields
.field private a:Lizp;

.field private b:Liwt;


# direct methods
.method public constructor <init>(Lizp;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ljaz;->a:Lizp;

    .line 23
    new-instance v0, Liwu;

    invoke-direct {v0, p0, p2}, Liwu;-><init>(Ljay;Landroid/app/Activity;)V

    iput-object v0, p0, Ljaz;->b:Liwt;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ljaz;->b:Liwt;

    invoke-interface {v0}, Liwt;->a()V

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljaz;->a:Lizp;

    invoke-interface {v0, p1}, Lizp;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method
