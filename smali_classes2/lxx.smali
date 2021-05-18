.class public Llxx;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lmbr;


# static fields
.field public static final a:Ljava/lang/String; = "status-key"

.field public static final b:Ljava/lang/String; = "equipment-item"

.field public static final c:Ljava/lang/String; = "position-item"


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/seguros/ui/widgets/EquipmentItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

.field private l:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

.field private m:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

.field private n:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

.field private o:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

.field private p:Llye;

.field private q:Llyd;

.field private r:Lkux;

.field private s:I

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llxx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llxx;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    sget-object v1, Llyc;->TV:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    sget-object v0, Llyc;->TV:Llyc;

    invoke-virtual {v0}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :cond_1
    sget-object v1, Llyc;->WASHING:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    sget-object v0, Llyc;->WASHING:Llyc;

    invoke-virtual {v0}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_2
    sget-object v1, Llyc;->DVD:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    sget-object v0, Llyc;->DVD:Llyc;

    invoke-virtual {v0}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_3
    sget-object v1, Llyc;->REFRIGERATOR:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    sget-object v0, Llyc;->REFRIGERATOR:Llyc;

    invoke-virtual {v0}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 369
    :cond_4
    sget-object v1, Llyc;->MICROWAVE:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    sget-object v0, Llyc;->MICROWAVE:Llyc;

    invoke-virtual {v0}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Llxx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Llxx;->t:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Llye;)Llxx;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    const-string v1, "status-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v1, Llxx;

    invoke-direct {v1}, Llxx;-><init>()V

    .line 265
    invoke-virtual {v1, v0}, Llxx;->setArguments(Landroid/os/Bundle;)V

    .line 266
    return-object v1
.end method

.method public static a(Llye;Lkux;I)Llxx;
    .locals 3

    .prologue
    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    const-string v1, "status-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "equipment-item"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "position-item"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    new-instance v1, Llxx;

    invoke-direct {v1}, Llxx;-><init>()V

    .line 276
    invoke-virtual {v1, v0}, Llxx;->setArguments(Landroid/os/Bundle;)V

    .line 277
    return-object v1
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 147
    if-nez p1, :cond_1

    .line 148
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 150
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 151
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->d()V

    .line 149
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 87
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llxx;->d:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f10077a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f10072d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llxx;->f:Landroid/widget/EditText;

    .line 90
    const v0, 0x7f10072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llxx;->g:Landroid/widget/Button;

    .line 91
    const v0, 0x7f100780

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llxx;->h:Landroid/widget/Button;

    .line 93
    const v0, 0x7f10077b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    iput-object v0, p0, Llxx;->k:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    .line 94
    const v0, 0x7f10077c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    iput-object v0, p0, Llxx;->l:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    .line 95
    const v0, 0x7f10077d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    iput-object v0, p0, Llxx;->m:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    .line 96
    const v0, 0x7f10077e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    iput-object v0, p0, Llxx;->n:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    .line 97
    const v0, 0x7f10077f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    iput-object v0, p0, Llxx;->o:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    .line 99
    iget-object v0, p0, Llxx;->k:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    sget-object v1, Llyc;->TV:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setName(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Llxx;->l:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    sget-object v1, Llyc;->REFRIGERATOR:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setName(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Llxx;->m:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    sget-object v1, Llyc;->MICROWAVE:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setName(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Llxx;->n:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    sget-object v1, Llyc;->DVD:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setName(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Llxx;->o:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    sget-object v1, Llyc;->WASHING:Llyc;

    invoke-virtual {v1}, Llyc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Llxx;->k:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0, p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setListener(Lmbr;)V

    .line 107
    iget-object v0, p0, Llxx;->l:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0, p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setListener(Lmbr;)V

    .line 108
    iget-object v0, p0, Llxx;->m:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0, p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setListener(Lmbr;)V

    .line 109
    iget-object v0, p0, Llxx;->n:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0, p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setListener(Lmbr;)V

    .line 110
    iget-object v0, p0, Llxx;->o:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0, p0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->setListener(Lmbr;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llxx;->j:Ljava/util/List;

    .line 113
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    iget-object v1, p0, Llxx;->k:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    iget-object v1, p0, Llxx;->l:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    iget-object v1, p0, Llxx;->m:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    iget-object v1, p0, Llxx;->n:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    iget-object v1, p0, Llxx;->o:Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Llxx;->a()V

    .line 123
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    new-instance v1, Llxy;

    invoke-direct {v1, p0}, Llxy;-><init>(Llxx;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    .line 142
    iget-object v1, p0, Llxx;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 143
    iget-object v1, p0, Llxx;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    return-void
.end method

.method static synthetic a(Llxx;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Llxx;->a(I)V

    return-void
.end method

.method private a(Llyc;)V
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 248
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Llyc;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->d()V

    .line 246
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method static synthetic b(Llxx;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llxx;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Llxx;)Llyd;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llxx;->q:Llyd;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Llxx;->p:Llye;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Llxx;->p:Llye;

    invoke-virtual {v0}, Llye;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Llye;->ADD:Llye;

    invoke-virtual {v1}, Llye;->toString()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 326
    const-string v0, "Seguros_Sinistro_Acionar_EquipamentoDanificado_Acao"

    const-string v1, "Adicionar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Llxx;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Llxx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Llxx;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Llxx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Llxx;->p:Llye;

    invoke-virtual {v0}, Llye;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Llye;->EDIT:Llye;

    invoke-virtual {v1}, Llye;->toString()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 331
    const-string v0, "Seguros_Sinistro_Acionar_EquipamentoDanificado_Acao"

    const-string v1, "Editar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Llxx;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Llxx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b87

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Llxx;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Llxx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    iget-object v1, p0, Llxx;->r:Lkux;

    invoke-virtual {v1}, Lkux;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-direct {p0}, Llxx;->d()V

    .line 340
    iget-object v0, p0, Llxx;->f:Landroid/widget/EditText;

    iget-object v1, p0, Llxx;->r:Lkux;

    invoke-virtual {v1}, Lkux;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic d(Llxx;)Llye;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llxx;->p:Llye;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Llxx;->r:Lkux;

    if-eqz v0, :cond_1

    .line 348
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 350
    iget-object v0, p0, Llxx;->r:Lkux;

    invoke-virtual {v0}, Lkux;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llxx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Llxx;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/EquipmentItem;->c()V

    .line 348
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 355
    :cond_1
    return-void
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Llxx;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Llxx;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 407
    :goto_0
    return v0

    .line 398
    :cond_0
    :try_start_0
    iget-object v1, p0, Llxx;->t:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 399
    invoke-virtual {p0}, Llxx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Llxx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09046c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Llxx;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Llxx;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Llxx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Llxx;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Llxx;->s:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Llxx;->g:Landroid/widget/Button;

    new-instance v1, Llxz;

    invoke-direct {v1, p0}, Llxz;-><init>(Llxx;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Llxx;->h:Landroid/widget/Button;

    new-instance v1, Llya;

    invoke-direct {v1, p0}, Llya;-><init>(Llxx;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method public a(Llyd;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Llxx;->q:Llyd;

    .line 78
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 206
    sget-object v0, Llyb;->b:[I

    invoke-static {p2}, Llyc;->valueOf(Ljava/lang/String;)Llyc;

    move-result-object v1

    invoke-virtual {v1}, Llyc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    sget-object v1, Llyc;->TV:Llyc;

    invoke-virtual {v1}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget-object v0, Llyc;->TV:Llyc;

    invoke-direct {p0, v0}, Llxx;->a(Llyc;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    sget-object v1, Llyc;->REFRIGERATOR:Llyc;

    invoke-virtual {v1}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    sget-object v0, Llyc;->REFRIGERATOR:Llyc;

    invoke-direct {p0, v0}, Llxx;->a(Llyc;)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    sget-object v1, Llyc;->MICROWAVE:Llyc;

    invoke-virtual {v1}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    sget-object v0, Llyc;->MICROWAVE:Llyc;

    invoke-direct {p0, v0}, Llxx;->a(Llyc;)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    sget-object v1, Llyc;->DVD:Llyc;

    invoke-virtual {v1}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    sget-object v0, Llyc;->DVD:Llyc;

    invoke-direct {p0, v0}, Llxx;->a(Llyc;)V

    goto :goto_0

    .line 228
    :pswitch_4
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    sget-object v1, Llyc;->WASHING:Llyc;

    invoke-virtual {v1}, Llyc;->getNameEquipment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    sget-object v0, Llyc;->WASHING:Llyc;

    invoke-direct {p0, v0}, Llxx;->a(Llyc;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Llxx;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b()Llye;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Llxx;->p:Llye;

    return-object v0
.end method

.method public b(Llye;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Llxx;->p:Llye;

    .line 287
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 293
    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Llye;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llye;

    iput-object v0, p0, Llxx;->p:Llye;

    .line 297
    :cond_0
    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "equipment-item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Llye;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llye;

    iput-object v0, p0, Llxx;->p:Llye;

    .line 299
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "equipment-item"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkux;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    iput-object v0, p0, Llxx;->r:Lkux;

    .line 300
    invoke-virtual {p0}, Llxx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position-item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llxx;->s:I

    .line 306
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 380
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 381
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 311
    const v0, 0x7f040186

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 312
    invoke-direct {p0, v0}, Llxx;->a(Landroid/view/View;)V

    .line 314
    invoke-direct {p0}, Llxx;->c()V

    .line 316
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 388
    return-void
.end method
