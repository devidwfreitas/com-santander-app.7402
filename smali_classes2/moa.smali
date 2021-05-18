.class public Lmoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lmoa;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lmoa;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->m(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmpw;

    move-result-object v0

    iget-object v1, p0, Lmoa;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmlo;

    move-result-object v1

    invoke-interface {v0, v1}, Lmpw;->b(Lmlo;)V

    .line 460
    return-void
.end method
