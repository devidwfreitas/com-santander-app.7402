.class public Ljgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Ljgv;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdz;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v2, Lgth;

    invoke-virtual {v0}, Ljdz;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v5, v6}, Lgth;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v2, Lgth;

    invoke-virtual {v0}, Ljdz;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0xe

    invoke-direct {v2, v0, v3, v4, v5}, Lgth;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Ljgv;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)Lgtg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgtg;->a(Ljava/util/ArrayList;)V

    .line 203
    return-void
.end method
