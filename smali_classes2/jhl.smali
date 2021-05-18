.class public Ljhl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljdz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ljhl;->a:Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljdz;Ljdz;)I
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p1}, Ljdz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljdz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 76
    check-cast p1, Ljdz;

    check-cast p2, Ljdz;

    invoke-virtual {p0, p1, p2}, Ljhl;->a(Ljdz;Ljdz;)I

    move-result v0

    return v0
.end method
