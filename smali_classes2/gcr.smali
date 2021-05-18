.class public Lgcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgtd;

.field final synthetic b:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;Lgtd;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lgcr;->b:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    iput-object p2, p0, Lgcr;->a:Lgtd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Lgte;

    iget-object v1, p0, Lgcr;->b:Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;

    iget-object v1, v1, Lcom/santander/app/cambio/transferenciaexterior/presentation/FavorecidoCambioActivity;->i:Landroid/app/Activity;

    new-instance v2, Lgcs;

    invoke-direct {v2, p0}, Lgcs;-><init>(Lgcr;)V

    invoke-direct {v0, v1, v2}, Lgte;-><init>(Landroid/app/Activity;Lgti;)V

    .line 154
    iget-object v1, p0, Lgcr;->a:Lgtd;

    invoke-virtual {v0, v1}, Lgte;->a(Lgtd;)V

    .line 155
    return-void
.end method
