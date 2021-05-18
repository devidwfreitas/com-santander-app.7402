.class public Lieh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faturas/activity/FaturasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lieh;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 336
    const-string v0, "Cartoes_Fatura_ResumoDaFatura_Acao"

    const-string v1, "CadastrarFaturaPorEmail"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lieh;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    const-class v1, Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Ljava/lang/Class;)V

    .line 338
    return-void
.end method
