.class public Lmoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lmoe;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 194
    const-string v0, "Transferencia_Acao"

    const-string v1, "Informativo1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lmoe;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-virtual {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->c()V

    .line 197
    return-void
.end method
