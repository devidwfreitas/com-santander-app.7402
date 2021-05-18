.class public Lgcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgsn;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lgcm;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "onSearchViewShown"

    const-string v1, "onSearchViewShown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "onSearchViewClosed"

    const-string v1, "onSearchViewClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
