.class public Liql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyo;


# instance fields
.field final synthetic a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Liql;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgxa;)V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Liql;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->e(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lgyq;

    move-result-object v0

    invoke-interface {v0, p1}, Lgyq;->d(Lgxa;)V

    .line 802
    return-void
.end method
