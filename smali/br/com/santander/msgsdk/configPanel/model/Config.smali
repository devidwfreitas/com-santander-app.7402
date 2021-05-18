.class public Lbr/com/santander/msgsdk/configPanel/model/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/configPanel/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile config:Lbr/com/santander/msgsdk/configPanel/model/Config;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/configPanel/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lbr/com/santander/msgsdk/configPanel/model/Config;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method public getConfigCategoryListMock()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/configPanel/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 27
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v0, Lbr/com/santander/msgsdk/configPanel/model/Category;

    const-string v1, "1"

    const-string v2, "Conta Corrente"

    const-string v3, "Seja notificado ao realizar transfer\u00eancias e saques."

    const-string v4, "Voc\u00ea deixar\u00e1 de receber notifica\u00e7\u00f5es via push ao realizar transfer\u00eancias. Tem certeza que deseja continuar?"

    invoke-direct/range {v0 .. v5}, Lbr/com/santander/msgsdk/configPanel/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    new-instance v6, Lbr/com/santander/msgsdk/configPanel/model/Category;

    const-string v7, "2"

    const-string v8, "Cart\u00f5es"

    const-string v9, "Acompanhe todas suas compras no cart\u00e3o e receba alertas como fechamento de fatura."

    const-string v10, "Voc\u00ea deixar\u00e1 de receber notifica\u00e7\u00f5es via push ap\u00f3s suas compras. Tem certeza que deseja continuar?"

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lbr/com/santander/msgsdk/configPanel/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    new-instance v7, Lbr/com/santander/msgsdk/configPanel/model/Category;

    const-string v8, "3"

    const-string v9, "Ofertas especiais"

    const-string v10, "Receba as melhores ofertas, promo\u00e7\u00f5es e alertas importantes como vencimento de investimentos."

    const-string v11, "Voc\u00ea deixar\u00e1 de receber notifica\u00e7\u00f5es via push com alertas importantes sobre sua conta. Tem certeza que deseja continuar?"

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lbr/com/santander/msgsdk/configPanel/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v13
.end method

.method public setConfigCategoryModelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/configPanel/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    sput-object p1, Lbr/com/santander/msgsdk/configPanel/model/Config;->categoryList:Ljava/util/List;

    .line 24
    return-void
.end method
