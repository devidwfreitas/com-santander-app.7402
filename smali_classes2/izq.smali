.class public Lizq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyx;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lizq;->a:Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lizq;->a:Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;)Ljba;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljba;->a(Ljava/lang/String;)V

    .line 49
    return-void
.end method
