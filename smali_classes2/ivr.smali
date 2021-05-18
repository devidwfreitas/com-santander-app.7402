.class public Livr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Livq;


# instance fields
.field private a:Ljah;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljah;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Livr;->a:Ljah;

    .line 23
    iput-object p2, p0, Livr;->b:Landroid/app/Activity;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Livr;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    iget-object v1, p0, Livr;->a:Ljah;

    invoke-interface {v1, v0}, Ljah;->a(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
