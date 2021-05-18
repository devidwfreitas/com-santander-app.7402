.class public Lkeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lkeh;->a:Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lkeh;->a:Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->a(Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;)Lkfl;

    move-result-object v0

    invoke-interface {v0}, Lkfl;->a()V

    .line 116
    return-void
.end method
