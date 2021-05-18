.class Lmnv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmnt;


# direct methods
.method constructor <init>(Lmnt;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lmnv;->a:Lmnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmnv;->a:Lmnt;

    iget-object v0, v0, Lmnt;->a:Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->a()V

    .line 151
    return-void
.end method
