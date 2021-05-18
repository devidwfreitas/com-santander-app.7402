.class Llzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llty;


# instance fields
.field final synthetic a:Llzx;


# direct methods
.method constructor <init>(Llzx;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Llzy;->a:Llzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Llzy;->a:Llzx;

    invoke-static {v0}, Llzx;->a(Llzx;)Lltu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lltu;->a(I)V

    .line 154
    const-string v0, "Seguros_Sinistro_Acionar_EquipamentoDanificado_PopUp_Acao"

    const-string v1, "Excluir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Llzy;->a:Llzx;

    iget-object v1, p0, Llzy;->a:Llzx;

    invoke-static {v1}, Llzx;->b(Llzx;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Llzx;->b(Ljava/util/List;)V

    .line 159
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Llzy;->a:Llzx;

    invoke-virtual {v0, p1}, Llzx;->a(I)V

    .line 164
    return-void
.end method
