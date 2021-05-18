.class public Lkei;
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
    .line 121
    iput-object p1, p0, Lkei;->a:Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lkei;->a:Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->a(Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;)Lkfl;

    move-result-object v0

    invoke-interface {v0}, Lkfl;->c()V

    .line 125
    return-void
.end method
