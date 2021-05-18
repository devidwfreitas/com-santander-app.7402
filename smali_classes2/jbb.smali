.class public Ljbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljba;


# instance fields
.field private a:Lizr;

.field private b:Liwx;


# direct methods
.method public constructor <init>(Lizr;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Ljbb;->a:Lizr;

    .line 25
    new-instance v0, Liwy;

    invoke-direct {v0, p0, p2}, Liwy;-><init>(Ljba;Landroid/app/Activity;)V

    iput-object v0, p0, Ljbb;->b:Liwx;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljbb;->a:Lizr;

    invoke-interface {v0, p1}, Lizr;->a(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public a(Lgyx;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljbb;->b:Liwx;

    invoke-interface {v0, p1}, Liwx;->a(Lgyx;)V

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljbb;->b:Liwx;

    invoke-interface {v0, p1}, Liwx;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method
