.class public Llqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Llqu;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 155
    const-string v0, "Seguros_Sinistro_Acionar_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Llqu;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)V

    .line 157
    return-void
.end method
