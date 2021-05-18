.class public Lmju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;


# direct methods
.method public constructor <init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lmju;->a:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    const-string v0, "Investimentos_RendaFixa_Aplicar_Sugestao_Acao"

    const-string v1, "TodasOp\u00e7oes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lmju;->a:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-static {v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->b(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Lmka;

    move-result-object v0

    invoke-interface {v0}, Lmka;->b()V

    .line 142
    return-void
.end method
