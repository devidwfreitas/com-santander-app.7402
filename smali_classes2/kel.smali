.class public Lkel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lkel;->a:Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lkel;->a:Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;

    invoke-static {v0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->a(Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;)Lkfp;

    move-result-object v0

    invoke-interface {v0}, Lkfp;->a()V

    .line 75
    return-void
.end method
