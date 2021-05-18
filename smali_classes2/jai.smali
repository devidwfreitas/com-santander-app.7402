.class public Ljai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljah;


# instance fields
.field private a:Liyf;

.field private b:Livq;


# direct methods
.method public constructor <init>(Liyf;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ljai;->a:Liyf;

    .line 24
    new-instance v0, Livr;

    invoke-direct {v0, p0, p2}, Livr;-><init>(Ljah;Landroid/app/Activity;)V

    iput-object v0, p0, Ljai;->b:Livq;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljai;->a:Liyf;

    invoke-interface {v0}, Liyf;->a()V

    .line 30
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljai;->a:Liyf;

    invoke-interface {v0, p1}, Liyf;->a(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljai;->b:Livq;

    invoke-interface {v0}, Livq;->a()V

    .line 35
    return-void
.end method
