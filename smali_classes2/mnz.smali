.class Lmnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmnx;


# direct methods
.method constructor <init>(Lmnx;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lmnz;->a:Lmnx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lmnz;->a:Lmnx;

    iget-object v0, v0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->e(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lmnz;->a:Lmnx;

    iget-object v1, v1, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->e(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 167
    return-void
.end method
