.class public Liyz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyx;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Liyz;->a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Liyz;->a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->b(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Liyz;->a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;)Ljap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljap;->b(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Liyz;->a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;)Ljap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljap;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
