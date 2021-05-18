.class Lun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ltm;

.field final synthetic b:Lue;


# direct methods
.method constructor <init>(Lue;Ltm;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lun;->b:Lue;

    iput-object p2, p0, Lun;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lun;->b:Lue;

    .line 305
    invoke-virtual {v0}, Lue;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_posicao_consolidada_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lun;->b:Lue;

    .line 306
    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_posicao_consolidada_resgatar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lun;->b:Lue;

    .line 308
    invoke-virtual {v0}, Lue;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_transaction_name_aplicar:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lun;->b:Lue;

    .line 309
    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_service_name_investimento:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Lzy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lun;->b:Lue;

    iget-object v1, p0, Lun;->a:Ltm;

    invoke-static {v0, v1}, Lue;->c(Lue;Ltm;)V

    .line 312
    return-void
.end method
