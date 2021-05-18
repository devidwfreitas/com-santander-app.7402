.class public Lldn;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llde;
.implements Lldl;
.implements Lldx;


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "FIRE_INSURANCE_VIEW_MODEL_KEY"


# instance fields
.field private d:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private e:Lkxm;

.field private f:Lldq;

.field private g:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

.field private h:I

.field private i:Lldr;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lldn;->h:I

    return-void
.end method

.method static synthetic a(Lldn;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lldn;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method static synthetic a(Lldn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lldn;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lldr;)Lldn;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lldn;

    invoke-direct {v0}, Lldn;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v2, "FIRE_INSURANCE_VIEW_MODEL_KEY"

    invoke-virtual {p0}, Lldr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v1}, Lldn;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f1009a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    iput-object v0, p0, Lldn;->g:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    .line 88
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lldn;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 89
    return-void
.end method

.method static synthetic b(Lldn;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lldn;->f()V

    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    invoke-virtual {p0}, Lldn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lldn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lldn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lldn;->i:Lldr;

    invoke-virtual {v3}, Lldr;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    iget-object v1, p0, Lldn;->g:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->a([Ljava/lang/String;)V

    .line 102
    :goto_0
    invoke-direct {p0}, Lldn;->f()V

    .line 103
    return-void

    .line 99
    :cond_0
    iget-object v3, p0, Lldn;->g:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 108
    iget-object v1, p0, Lldn;->i:Lldr;

    invoke-virtual {v1}, Lldr;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lldn;->h:I

    if-ne v1, v0, :cond_0

    .line 109
    iget v1, p0, Lldn;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lldn;->h:I

    .line 114
    :cond_0
    iget v1, p0, Lldn;->h:I

    packed-switch v1, :pswitch_data_0

    .line 132
    iget-object v0, p0, Lldn;->f:Lldq;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lldn;->f:Lldq;

    iget-object v1, p0, Lldn;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lldq;->a(Ljava/lang/String;)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 116
    :pswitch_0
    const/4 v0, 0x0

    .line 117
    invoke-static {}, Llcy;->a()Llcy;

    move-result-object v1

    .line 118
    invoke-virtual {v1, p0}, Llcy;->a(Llde;)V

    .line 138
    :goto_1
    iget-object v2, p0, Lldn;->g:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    sget-object v3, Lmfn;->COMPLETED_GREEN:Lmfn;

    invoke-virtual {v2, v3, v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->a(Lmfn;Z)V

    .line 140
    iget v0, p0, Lldn;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lldn;->h:I

    .line 141
    invoke-virtual {p0}, Lldn;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f100110

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-static {}, Llds;->a()Llds;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p0}, Llds;->a(Lldx;)V

    goto :goto_1

    .line 129
    :pswitch_2
    invoke-direct {p0}, Lldn;->g()Lldf;

    move-result-object v1

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private g()Lldf;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lldn;->i:Lldr;

    invoke-virtual {v0}, Lldr;->c()Lkps;

    move-result-object v0

    invoke-virtual {v0}, Lkps;->d()Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v0, p0, Lldn;->i:Lldr;

    invoke-virtual {v0}, Lldr;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lldn;->i:Lldr;

    invoke-virtual {v0}, Lldr;->b()Lkon;

    move-result-object v0

    invoke-virtual {v0}, Lkon;->c()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    iget-object v3, p0, Lldn;->i:Lldr;

    invoke-virtual {v3}, Lldr;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    iget-object v1, p0, Lldn;->k:Ljava/lang/String;

    .line 158
    :cond_0
    iget-object v3, p0, Lldn;->i:Lldr;

    invoke-virtual {v3}, Lldr;->a()Lkoi;

    move-result-object v3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-virtual {v3}, Lkoi;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3}, Lkoi;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v3}, Lkoi;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance v3, Lldm;

    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Lldm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v3}, Lldf;->a(Lldm;)Lldf;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0}, Lldf;->a(Lldl;)V

    .line 172
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private h()Lkoo;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 236
    new-instance v0, Lkoo;

    invoke-direct {v0}, Lkoo;-><init>()V

    .line 238
    iget-object v1, p0, Lldn;->i:Lldr;

    invoke-virtual {v1}, Lldr;->a()Lkoi;

    move-result-object v1

    .line 240
    sget-object v2, Lldn;->b:Ljava/lang/String;

    const-string v3, "[^\\d]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v0, v3, v2}, Lkoo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lldn;->i:Lldr;

    invoke-virtual {v2}, Lldr;->c()Lkps;

    move-result-object v2

    .line 247
    invoke-virtual {p0}, Lldn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "jsons/assistance/accountProductsMapping.json"

    invoke-static {v3, v4}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    if-eqz v2, :cond_0

    .line 250
    iget-object v4, p0, Lldn;->i:Lldr;

    invoke-virtual {v4}, Lldr;->c()Lkps;

    move-result-object v4

    invoke-virtual {v4}, Lkps;->g()Lkog;

    move-result-object v4

    invoke-virtual {v4}, Lkog;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkoo;->e(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2}, Lkps;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkoo;->f(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2}, Lkps;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkoo;->g(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2}, Lkps;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkoo;->h(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Lkoi;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lldn;->i:Lldr;

    .line 256
    invoke-virtual {v4}, Lldr;->c()Lkps;

    move-result-object v4

    invoke-virtual {v4}, Lkps;->g()Lkog;

    move-result-object v4

    invoke-virtual {v4}, Lkog;->a()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-static {v3, v2, v4}, Lkof;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v0, v2}, Lkoo;->a(Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lldn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "jsons/assistance/statesAndCityMapping.json"

    invoke-static {v2, v3}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {v1}, Lkoi;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lkoi;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lkpq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v1}, Lkoi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkoo;->n(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Lkoi;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkoo;->l(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Lkoi;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkoo;->m(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Lkoi;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkoo;->p(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v2}, Lkoo;->o(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Lkoi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoo;->j(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lldn;->i:Lldr;

    invoke-virtual {v1}, Lldr;->a()Lkoi;

    move-result-object v1

    invoke-virtual {v1}, Lkoi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoo;->b(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lldn;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lldn;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    iget-object v1, p0, Lldn;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkoo;->i(Ljava/lang/String;)V

    .line 274
    :cond_1
    iget-object v1, p0, Lldn;->i:Lldr;

    invoke-virtual {v1}, Lldr;->f()Ljava/lang/String;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    invoke-virtual {v0, v1}, Lkoo;->d(Ljava/lang/String;)V

    .line 278
    :cond_2
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoo;->c(Ljava/lang/String;)V

    .line 280
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lldn;->i:Lldr;

    invoke-virtual {v0}, Lldr;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lldn;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lldn;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 180
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lldn;->j:Ljava/lang/String;

    .line 205
    iput-object p2, p0, Lldn;->k:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lldn;->f()V

    .line 207
    return-void
.end method

.method public a(Lldq;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lldn;->f:Lldq;

    .line 285
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lldn;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 185
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    sput-object p1, Lldn;->a:Ljava/lang/String;

    .line 198
    sput-object p2, Lldn;->b:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lldn;->f()V

    .line 200
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput v0, p0, Lldn;->h:I

    .line 190
    iget-object v0, p0, Lldn;->g:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c()V

    .line 191
    iget-object v0, p0, Lldn;->g:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;->c()V

    .line 192
    invoke-direct {p0}, Lldn;->f()V

    .line 193
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lldn;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 212
    iget-object v0, p0, Lldn;->e:Lkxm;

    invoke-direct {p0}, Lldn;->h()Lkoo;

    move-result-object v1

    new-instance v2, Lldo;

    invoke-direct {v2, p0}, Lldo;-><init>(Lldn;)V

    new-instance v3, Lldp;

    invoke-direct {v3, p0}, Lldp;-><init>(Lldn;)V

    invoke-interface {v0, v1, v2, v3}, Lkxm;->a(Lkoo;Lkxl;Lkxl;)V

    .line 233
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lldn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lldn;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "FIRE_INSURANCE_VIEW_MODEL_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lldr;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldr;

    iput-object v0, p0, Lldn;->i:Lldr;

    .line 73
    :cond_0
    new-instance v0, Lkxn;

    invoke-direct {v0}, Lkxn;-><init>()V

    iput-object v0, p0, Lldn;->e:Lkxm;

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    const v0, 0x7f0401f0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Lldn;->a(Landroid/view/View;)V

    .line 81
    invoke-direct {p0}, Lldn;->e()V

    .line 83
    return-object v0
.end method
