.class public Ljau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljat;


# instance fields
.field private a:Lizm;

.field private b:Liwj;


# direct methods
.method public constructor <init>(Lizm;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ljau;->a:Lizm;

    .line 24
    new-instance v0, Liwk;

    invoke-direct {v0, p0, p2}, Liwk;-><init>(Ljat;Landroid/app/Activity;)V

    iput-object v0, p0, Ljau;->b:Liwj;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljau;->a:Lizm;

    invoke-interface {v0, p1}, Lizm;->a(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljau;->b:Liwj;

    invoke-interface {v0, p1}, Liwj;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method
