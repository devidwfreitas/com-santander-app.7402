.class public Ljad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljac;


# instance fields
.field private a:Lixl;

.field private b:Livn;


# direct methods
.method public constructor <init>(Lixl;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Ljad;->a:Lixl;

    .line 25
    new-instance v0, Livo;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p0, p1}, Livo;-><init>(Ljac;Landroid/app/Activity;)V

    iput-object v0, p0, Ljad;->b:Livn;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljad;->a:Lixl;

    invoke-interface {v0}, Lixl;->a()V

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljad;->a:Lixl;

    invoke-interface {v0, p1, p2}, Lixl;->a(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public a(Ljqi;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljad;->b:Livn;

    invoke-interface {v0, p1}, Livn;->a(Ljqi;)V

    .line 36
    return-void
.end method

.method public a(Ljqj;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljad;->a:Lixl;

    invoke-interface {v0, p1}, Lixl;->a(Ljqj;)V

    .line 51
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljad;->a:Lixl;

    invoke-interface {v0}, Lixl;->b()V

    .line 41
    return-void
.end method
