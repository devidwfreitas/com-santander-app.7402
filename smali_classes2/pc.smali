.class public Lpc;
.super Lacy;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/view/View;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/view/View;

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Landroid/view/View;

.field private S:Landroid/widget/LinearLayout;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/LinearLayout;

.field private V:Ltk;

.field private final W:Landroid/graphics/drawable/Drawable;

.field private final X:Landroid/graphics/drawable/Drawable;

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Landroid/support/v7/app/AlertDialog;

.field private aa:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private l:Lnf;

.field private m:Lacg;

.field private n:Lom;

.field private o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/EditText;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1}, Lacy;-><init>(Lack;)V

    .line 68
    const-string v0, "A"

    iput-object v0, p0, Lpc;->g:Ljava/lang/String;

    .line 69
    const-string v0, "C"

    iput-object v0, p0, Lpc;->h:Ljava/lang/String;

    .line 70
    const-string v0, " dias"

    iput-object v0, p0, Lpc;->i:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkx;->inv_transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lpc;->j:I

    .line 73
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkx;->inv_white_three:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lpc;->k:I

    .line 123
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkz;->shape_selector_fg_unselected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lpc;->W:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lkz;->shape_selector_fg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpc;->Y:Ljava/util/List;

    .line 128
    iput-object v2, p0, Lpc;->Z:Landroid/support/v7/app/AlertDialog;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpc;->aa:Z

    .line 134
    new-instance v0, Lnf;

    invoke-direct {v0}, Lnf;-><init>()V

    iput-object v0, p0, Lpc;->l:Lnf;

    .line 135
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lpc;->m:Lacg;

    .line 137
    iput-object v2, p0, Lpc;->V:Ltk;

    .line 139
    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->r()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpc;->m:Lacg;

    invoke-virtual {v1}, Lacg;->t()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    iput-object v0, p0, Lpc;->V:Ltk;

    .line 143
    :cond_0
    new-instance v0, Lace;

    iget-object v1, p0, Lpc;->m:Lacg;

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    iget-object v2, p0, Lpc;->m:Lacg;

    invoke-virtual {v2}, Lacg;->p()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpc;->m:Lacg;

    invoke-virtual {v3}, Lacg;->o()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lpc;->V:Ltk;

    iget-object v5, p0, Lpc;->m:Lacg;

    invoke-virtual {v5}, Lacg;->q()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lace;-><init>(Lto;Ljava/lang/String;Ljava/lang/Integer;Ltk;Ljava/lang/String;)V

    iput-object v0, p0, Lpc;->c:Lace;

    .line 144
    iget-object v0, p0, Lpc;->c:Lace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lace;->f(Z)V

    .line 146
    invoke-direct {p0}, Lpc;->l()V

    .line 147
    invoke-virtual {p0}, Lpc;->j()V

    .line 148
    invoke-direct {p0}, Lpc;->Q()V

    .line 149
    return-void
.end method

.method static synthetic A(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private A()V
    .locals 3

    .prologue
    .line 843
    iget-boolean v0, p0, Lpc;->aa:Z

    if-eqz v0, :cond_0

    .line 844
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Llg;->app_dialogo_msg_29_30_31:I

    .line 845
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_atencao:I

    .line 846
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_ok:I

    new-instance v2, Lpq;

    invoke-direct {v2, p0}, Lpq;-><init>(Lpc;)V

    .line 847
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 857
    :cond_0
    return-void
.end method

.method static synthetic B(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private B()Ljava/util/Calendar;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 887
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 888
    iget-object v1, p0, Lpc;->m:Lacg;

    invoke-virtual {v1}, Lacg;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POUPAN\u00c7A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 889
    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {v2}, Lace;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 890
    const/16 v1, 0x3c

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 894
    :goto_0
    return-object v0

    .line 892
    :cond_0
    const/16 v1, 0x5a

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method private C()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 933
    const-string v0, ""

    .line 934
    invoke-direct {p0}, Lpc;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 935
    sget-object v0, Labt;->MIN_INITIAL_INVESTMENT:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 939
    :goto_0
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lpc;->m:Lacg;

    invoke-virtual {v1}, Lacg;->r()Ljava/util/List;

    move-result-object v1

    .line 942
    invoke-static {v1}, Lacj;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 943
    sget-object v0, Labt;->MIN_INITIAL_INVESTMENT:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 947
    :cond_0
    iget-object v1, p0, Lpc;->p:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_1

    .line 948
    sget-object v0, Labt;->MIN_MONTHLY_SCHEDULE:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 952
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2

    .line 953
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 956
    :cond_2
    return-object v0

    .line 937
    :cond_3
    sget-object v0, Labt;->MIN_INJECTION:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic C(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->u()V

    return-void
.end method

.method static synthetic D(Lpc;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    return-object v0
.end method

.method private D()Z
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Labs;->CDB:Labs;

    invoke-virtual {v1}, Labs;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private E()Ljava/lang/String;
    .locals 3

    .prologue
    .line 965
    iget-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 967
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 970
    :goto_0
    return-object v0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 970
    const-string v0, "FORMAT_EXCEPTION: Not possible to convert investment amount"

    goto :goto_0
.end method

.method static synthetic E(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->P()V

    return-void
.end method

.method private F()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 975
    invoke-direct {p0}, Lpc;->E()Ljava/lang/String;

    move-result-object v0

    .line 977
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 980
    :goto_0
    return-object v0

    .line 978
    :catch_0
    move-exception v0

    .line 979
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 980
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic F(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->G()V

    return-void
.end method

.method static synthetic G(Lpc;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->x:Landroid/widget/EditText;

    return-object v0
.end method

.method private G()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 985
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lpc;->N:Landroid/view/View;

    aput-object v3, v2, v1

    iget-object v3, p0, Lpc;->z:Landroid/widget/TextView;

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lpc;->b([Landroid/view/View;)V

    .line 986
    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {v2}, Lace;->h()Lou;

    move-result-object v2

    invoke-virtual {v2}, Lou;->g()V

    .line 988
    invoke-direct {p0}, Lpc;->I()Z

    move-result v2

    if-nez v2, :cond_0

    .line 989
    :goto_0
    invoke-direct {p0, v0}, Lpc;->a(Z)V

    .line 991
    iget-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-direct {p0, v0}, Lpc;->c(Landroid/view/View;)V

    .line 993
    invoke-direct {p0}, Lpc;->L()V

    .line 994
    return-void

    :cond_0
    move v0, v1

    .line 988
    goto :goto_0
.end method

.method static synthetic H(Lpc;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->u:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private H()V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lpc;->b:Ljava/util/List;

    iget-object v1, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 998
    return-void
.end method

.method static synthetic I(Lpc;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method private I()Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1001
    .line 1003
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0}, Lace;->h()Lou;

    move-result-object v0

    invoke-virtual {v0}, Lou;->e()Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-static {v0}, Laat;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 1006
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0}, Lace;->h()Lou;

    move-result-object v0

    invoke-virtual {v0}, Lou;->h()Ljava/lang/String;

    move-result-object v0

    .line 1007
    invoke-static {v0}, Laat;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 1009
    invoke-direct {p0}, Lpc;->E()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lpc;->C()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v5}, Lpc;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1010
    :goto_0
    invoke-direct {p0}, Lpc;->F()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v3, v8, v10

    if-lez v3, :cond_3

    move v3, v1

    .line 1011
    :goto_1
    invoke-direct {p0}, Lpc;->F()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {p0}, Lpc;->C()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v4, v8, v10

    if-gez v4, :cond_4

    move v4, v1

    .line 1012
    :goto_2
    invoke-direct {p0}, Lpc;->E()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5, v6}, Lpc;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v5

    .line 1014
    if-eqz v0, :cond_6

    .line 1015
    if-eqz v4, :cond_0

    .line 1016
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v4, p0, Lpc;->N:Landroid/view/View;

    aput-object v4, v0, v2

    iget-object v2, p0, Lpc;->z:Landroid/widget/TextView;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lpc;->a([Landroid/view/View;)V

    .line 1018
    :cond_0
    if-eqz v5, :cond_5

    .line 1019
    invoke-direct {p0}, Lpc;->N()V

    .line 1029
    :cond_1
    :goto_3
    return v1

    :cond_2
    move v0, v2

    .line 1009
    goto :goto_0

    :cond_3
    move v3, v2

    .line 1010
    goto :goto_1

    :cond_4
    move v4, v2

    .line 1011
    goto :goto_2

    .line 1020
    :cond_5
    if-eqz v3, :cond_1

    .line 1021
    invoke-direct {p0}, Lpc;->J()V

    goto :goto_3

    .line 1024
    :cond_6
    invoke-direct {p0}, Lpc;->M()V

    move v1, v2

    .line 1026
    goto :goto_3
.end method

.method private J()V
    .locals 7

    .prologue
    .line 1033
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0}, Lace;->h()Lou;

    move-result-object v0

    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lpc;->c:Lace;

    invoke-virtual {v1}, Lace;->h()Lou;

    move-result-object v1

    invoke-virtual {v1}, Lou;->m()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-static {v1, v0}, Laat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    iget-object v1, p0, Lpc;->Z:Landroid/support/v7/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1038
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v2

    sget v3, Llg;->app_atencao:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1039
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v3

    sget v4, Llg;->app_msg_sem_saldo:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lpr;

    invoke-direct {v3, p0}, Lpr;-><init>(Lpc;)V

    .line 1038
    invoke-static {v1, v2, v0, v3}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laas;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lpc;->Z:Landroid/support/v7/app/AlertDialog;

    .line 1051
    :cond_0
    return-void
.end method

.method static synthetic J(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->y()V

    return-void
.end method

.method static synthetic K(Lpc;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->y:Landroid/widget/EditText;

    return-object v0
.end method

.method private K()V
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lpc;->Z:Landroid/support/v7/app/AlertDialog;

    .line 1055
    return-void
.end method

.method static synthetic L(Lpc;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->w()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private L()V
    .locals 3

    .prologue
    .line 1058
    invoke-direct {p0}, Lpc;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    iget-object v1, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "0,00"

    :cond_0
    invoke-virtual {v1, v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    return-void
.end method

.method static synthetic M(Lpc;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->x()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private M()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1077
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0}, Lace;->b()Z

    move-result v0

    .line 1078
    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-direct {p0}, Lpc;->F()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->b(Ljava/lang/Double;)V

    .line 1080
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, v2}, Lace;->a(Ljava/lang/Double;)V

    .line 1085
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, v2}, Lace;->b(Ljava/lang/Double;)V

    .line 1083
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-direct {p0}, Lpc;->F()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Ljava/lang/Double;)V

    goto :goto_0
.end method

.method static synthetic N(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private N()V
    .locals 6

    .prologue
    .line 1088
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Llg;->app_atencao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1089
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v2, Llg;->app_msg_sem_saldo_limite:I

    invoke-virtual {v0, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1091
    sget v3, Llg;->app_sim:I

    .line 1092
    sget v4, Llg;->app_cancelar:I

    .line 1094
    iget-object v0, p0, Lpc;->Z:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1095
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    new-instance v5, Lps;

    invoke-direct {v5, p0}, Lps;-><init>(Lpc;)V

    invoke-static/range {v0 .. v5}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILaar;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lpc;->Z:Landroid/support/v7/app/AlertDialog;

    .line 1122
    :cond_0
    return-void
.end method

.method static synthetic O(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private O()V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    sget v1, Llg;->app_zero_string_br:I

    invoke-virtual {v0, v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->setText(I)V

    .line 1126
    iget-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->requestFocus()Z

    .line 1127
    return-void
.end method

.method static synthetic P(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private P()V
    .locals 1

    .prologue
    .line 1130
    invoke-direct {p0}, Lpc;->H()V

    .line 1132
    iget-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->selectAll()V

    .line 1134
    iget-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {p0, v0}, Lpc;->a(Landroid/view/View;)V

    .line 1135
    return-void
.end method

.method static synthetic Q(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private Q()V
    .locals 7

    .prologue
    .line 1138
    new-instance v0, Loo;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Loo;-><init>(Landroid/content/Context;)V

    .line 1140
    const/4 v4, 0x0

    .line 1143
    iget-object v1, p0, Lpc;->V:Ltk;

    if-eqz v1, :cond_0

    .line 1144
    iget-object v1, p0, Lpc;->V:Ltk;

    invoke-virtual {v1}, Ltk;->a()Ljava/lang/String;

    move-result-object v4

    .line 1145
    const-string v5, "A"

    .line 1150
    :goto_0
    iget-object v1, p0, Lpc;->m:Lacg;

    .line 1151
    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    invoke-virtual {v1}, Lto;->u()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpc;->m:Lacg;

    .line 1152
    invoke-virtual {v2}, Lacg;->n()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpc;->m:Lacg;

    .line 1153
    invoke-virtual {v3}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lpt;

    invoke-direct {v6, p0}, Lpt;-><init>(Lpc;)V

    .line 1150
    invoke-virtual/range {v0 .. v6}, Loo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lot;)V

    .line 1179
    return-void

    .line 1147
    :cond_0
    const-string v5, "C"

    goto :goto_0
.end method

.method static synthetic R(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private R()V
    .locals 4

    .prologue
    .line 1262
    new-instance v0, Loo;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Loo;-><init>(Landroid/content/Context;)V

    .line 1263
    iget-object v1, p0, Lpc;->s:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 1264
    iget-object v1, p0, Lpc;->F:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1266
    iget-object v1, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1267
    iget-object v2, p0, Lpc;->m:Lacg;

    invoke-virtual {v2}, Lacg;->n()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Laat;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lpx;

    invoke-direct {v3, p0}, Lpx;-><init>(Lpc;)V

    invoke-virtual {v0, v2, v1, v3}, Loo;->a(Ljava/lang/String;Ljava/lang/String;Lot;)V

    .line 1289
    return-void
.end method

.method static synthetic S(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private S()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 1293
    iget-object v0, p0, Lpc;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    new-instance v6, Lpy;

    invoke-direct {v6, p0}, Lpy;-><init>(Lpc;)V

    .line 1353
    iget-object v0, p0, Lpc;->l:Lnf;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lpc;->m:Lacg;

    .line 1354
    invoke-virtual {v2}, Lacg;->n()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpc;->m:Lacg;

    .line 1355
    invoke-virtual {v3}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpc;->m:Lacg;

    .line 1356
    invoke-virtual {v4}, Lacg;->y()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lpc;->m:Lacg;

    .line 1357
    invoke-virtual {v5}, Lacg;->z()Ljava/lang/String;

    move-result-object v5

    .line 1353
    invoke-virtual/range {v0 .. v6}, Lnf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnh;)V

    .line 1359
    return-void
.end method

.method static synthetic T(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private T()Ljava/lang/Integer;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v0, 0x18

    .line 1363
    .line 1365
    :try_start_0
    sget-object v1, Labt;->INVESTMENT_HOUR_LIMIT:Labt;

    invoke-virtual {v1}, Labt;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1366
    iget-object v2, p0, Lpc;->n:Lom;

    invoke-virtual {v2, v1}, Lom;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1367
    iget-object v2, p0, Lpc;->n:Lom;

    invoke-virtual {v2, v1}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1368
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1369
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1374
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1369
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private U()V
    .locals 5

    .prologue
    .line 1378
    invoke-direct {p0}, Lpc;->X()V

    .line 1380
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0}, Lace;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    invoke-direct {p0}, Lpc;->V()V

    .line 1386
    :goto_0
    invoke-direct {p0}, Lpc;->C()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    .line 1387
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->config_apl_txt_valor_minimo:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1388
    iget-object v1, p0, Lpc;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    return-void

    .line 1383
    :cond_0
    invoke-direct {p0}, Lpc;->W()V

    goto :goto_0
.end method

.method static synthetic U(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->A()V

    return-void
.end method

.method private V()V
    .locals 3

    .prologue
    .line 1392
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0}, Lace;->k()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lpc;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 1393
    invoke-direct {p0}, Lpc;->z()V

    .line 1395
    invoke-direct {p0}, Lpc;->B()Ljava/util/Calendar;

    move-result-object v0

    .line 1396
    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {v2}, Lace;->k()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1398
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1401
    :goto_0
    invoke-direct {p0, v0}, Lpc;->f(Ljava/util/Calendar;)V

    .line 1402
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic V(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->O()V

    return-void
.end method

.method static synthetic W(Lpc;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->b:Ljava/util/List;

    return-object v0
.end method

.method private W()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1405
    invoke-direct {p0}, Lpc;->T()Ljava/lang/Integer;

    move-result-object v0

    .line 1407
    iget-object v1, p0, Lpc;->c:Lace;

    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {v2}, Lace;->m()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lace;->a(Ljava/lang/Double;)V

    .line 1408
    iget-object v1, p0, Lpc;->c:Lace;

    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {v2}, Lace;->n()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lpc;->a(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v1, v0}, Lace;->a(Ljava/util/Calendar;)V

    .line 1409
    iget-object v0, p0, Lpc;->c:Lace;

    iget-object v1, p0, Lpc;->c:Lace;

    invoke-virtual {v1}, Lace;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Ljava/lang/Integer;)V

    .line 1410
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, v3}, Lace;->b(Ljava/lang/Double;)V

    .line 1411
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, v3}, Lace;->b(Ljava/util/Calendar;)V

    .line 1412
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, v3}, Lace;->b(Ljava/lang/Integer;)V

    .line 1413
    iget-object v0, p0, Lpc;->G:Landroid/widget/TextView;

    sget v1, Llg;->config_apl_txt_data:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1414
    iget-object v0, p0, Lpc;->H:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1415
    return-void
.end method

.method private X()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1432
    iget-object v0, p0, Lpc;->q:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 1433
    :goto_0
    iget-object v3, p0, Lpc;->p:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 1435
    :goto_1
    iget-object v5, p0, Lpc;->q:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lpc;->W:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1436
    iget-object v5, p0, Lpc;->q:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget v4, p0, Lpc;->j:I

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1437
    iget-object v4, p0, Lpc;->q:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1439
    iget-object v4, p0, Lpc;->p:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lpc;->W:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1440
    iget-object v4, p0, Lpc;->p:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget v0, p0, Lpc;->j:I

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1441
    iget-object v0, p0, Lpc;->p:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1443
    iget-object v0, p0, Lpc;->c:Lace;

    if-nez v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Lace;->a(Z)V

    .line 1444
    return-void

    :cond_0
    move v0, v2

    .line 1432
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1433
    goto :goto_1

    .line 1435
    :cond_2
    iget-object v4, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1436
    :cond_3
    iget v4, p0, Lpc;->k:I

    goto :goto_3

    .line 1439
    :cond_4
    iget-object v0, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 1440
    :cond_5
    iget v0, p0, Lpc;->k:I

    goto :goto_5

    :cond_6
    move v1, v2

    .line 1443
    goto :goto_6
.end method

.method static synthetic X(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->K()V

    return-void
.end method

.method private Y()V
    .locals 7

    .prologue
    .line 1447
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    .line 1448
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    sget v2, Llg;->app_alerta:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1449
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v2

    sget v3, Llg;->lci_alert_content:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0}, Lpc;->Z()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1450
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v3

    sget v4, Llg;->app_cancelar:I

    invoke-virtual {v3, v4}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lqb;

    invoke-direct {v4, p0}, Lqb;-><init>(Lpc;)V

    .line 1447
    invoke-static {v0, v1, v2, v3, v4}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Laas;)V

    .line 1457
    return-void
.end method

.method static synthetic Y(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->M()V

    return-void
.end method

.method private Z()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1460
    const-string v0, "0:00"

    .line 1462
    sget-object v1, Labt;->INVESTMENT_HOUR_LIMIT:Labt;

    invoke-virtual {v1}, Labt;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1463
    iget-object v2, p0, Lpc;->n:Lom;

    invoke-virtual {v2, v1}, Lom;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1464
    iget-object v2, p0, Lpc;->n:Lom;

    invoke-virtual {v2, v1}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1466
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 1469
    aget-object v0, v1, v3

    const-string v2, "h"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    aget-object v0, v1, v3

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1474
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1477
    :cond_0
    return-object v0

    .line 1472
    :cond_1
    aget-object v0, v1, v3

    goto :goto_0
.end method

.method static synthetic Z(Lpc;)Lom;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->n:Lom;

    return-object v0
.end method

.method static synthetic a(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Ljava/util/Calendar;)Landroid/app/DatePickerDialog;
    .locals 7

    .prologue
    .line 783
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^0-9^/]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    invoke-static {p2}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 788
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 790
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 791
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    .line 792
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 794
    invoke-direct {p0}, Lpc;->B()Ljava/util/Calendar;

    move-result-object v6

    .line 796
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    new-instance v2, Lpn;

    invoke-direct {v2, p0, p2, v6, p1}, Lpn;-><init>(Lpc;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/widget/TextView;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 814
    return-object v0
.end method

.method static synthetic a(Lpc;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lpc;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1256
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 1257
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1258
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lpc;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lpc;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lpc;->c(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-direct {p0, p1}, Lpc;->b(Ljava/util/Calendar;)V

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpc;->aa:Z

    .line 867
    :goto_0
    return-object p1

    .line 864
    :cond_0
    invoke-direct {p0}, Lpc;->T()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lpc;->a(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    goto :goto_0
.end method

.method static synthetic a(Lpc;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lpc;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lpc;Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lpc;->a(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lpc;Lom;)Lom;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lpc;->n:Lom;

    return-object p1
.end method

.method private a(Landroid/app/DatePickerDialog;Ljava/util/Calendar;)V
    .locals 5

    .prologue
    .line 822
    invoke-direct {p0}, Lpc;->B()Ljava/util/Calendar;

    move-result-object v0

    .line 823
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 824
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 826
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 827
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 828
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 830
    new-instance v0, Lpp;

    invoke-direct {v0, p0}, Lpp;-><init>(Lpc;)V

    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 837
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 838
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 840
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 691
    new-array v3, v5, [Landroid/widget/Button;

    sget v0, Lla;->item_btn_0:I

    .line 692
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v3, v2

    sget v0, Lla;->item_btn_1:I

    .line 693
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v3, v1

    sget v0, Lla;->item_btn_2:I

    .line 694
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v3, v6

    .line 697
    new-array v4, v5, [Landroid/view/View;

    sget v0, Lla;->container_sel_0:I

    .line 698
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v4, v2

    sget v0, Lla;->container_sel_1:I

    .line 699
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v4, v1

    sget v0, Lla;->container_sel_2:I

    .line 700
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v4, v6

    .line 703
    new-array v5, v5, [Landroid/widget/TextView;

    sget v0, Lla;->item_txt_0:I

    .line 704
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    sget v0, Lla;->item_txt_1:I

    .line 705
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v1

    sget v0, Lla;->item_txt_2:I

    .line 706
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v6

    .line 709
    sget-object v0, Labt;->DEADLINES_LIST:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move v1, v2

    .line 713
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 714
    aget-object v0, v4, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 715
    aget-object v7, v5, v1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrd;

    invoke-virtual {v0}, Lrd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    aget-object v7, v3, v1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrd;

    invoke-virtual {v0}, Lrd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 717
    aget-object v0, v3, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setHint(Ljava/lang/CharSequence;)V

    .line 718
    aget-object v0, v3, v1

    new-instance v7, Lpl;

    invoke-direct {v7, p0}, Lpl;-><init>(Lpc;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v0, p0, Lpc;->Y:Ljava/util/List;

    aget-object v7, v3, v1

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 728
    :cond_0
    sget-object v0, Labt;->ANOTHER_DEADLINE_INDEX:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 729
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    sget v0, Lla;->item_btn_outros:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lpc;->Y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHint(Ljava/lang/CharSequence;)V

    .line 732
    new-instance v1, Lpm;

    invoke-direct {v1, p0}, Lpm;-><init>(Lpc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    sget v1, Lla;->container_sel_outro:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v1, p0, Lpc;->Y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :goto_1
    return-void

    .line 742
    :cond_1
    sget v0, Lla;->container_sel_outro:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    iget-object v1, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 744
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    iget v1, p0, Lpc;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method

.method private a(Landroid/widget/Button;)V
    .locals 4

    .prologue
    .line 749
    iget-object v0, p0, Lpc;->Y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 751
    invoke-virtual {v0}, Landroid/widget/Button;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/Button;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 753
    iget v2, p0, Lpc;->k:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 759
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Outro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    iget-object v0, p0, Lpc;->y:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lpc;->y:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 755
    :cond_0
    iget-object v2, p0, Lpc;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 756
    iget v2, p0, Lpc;->j:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 763
    :cond_1
    iget-object v0, p0, Lpc;->y:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 766
    :cond_2
    return-void
.end method

.method private a(Landroid/widget/EditText;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    if-eqz p2, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Lpc;->a(Landroid/view/View;)V

    .line 534
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " dias"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 556
    :goto_0
    invoke-virtual {p0}, Lpc;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 557
    :goto_1
    invoke-direct {p0, v0}, Lpc;->a(Z)V

    .line 558
    return-void

    .line 536
    :cond_0
    invoke-direct {p0, p1}, Lpc;->c(Landroid/view/View;)V

    .line 538
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-direct {p0}, Lpc;->w()Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0}, Lpc;->x()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lpc;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    new-array v2, v5, [Landroid/view/View;

    iget-object v3, p0, Lpc;->J:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v3

    sget v4, Lla;->config_apl_ln_prazo:I

    invoke-virtual {v3, v4}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lpc;->b([Landroid/view/View;)V

    .line 542
    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {v2}, Lace;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lace;->b(Ljava/lang/Integer;)V

    .line 548
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 545
    :cond_1
    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lace;->a(Ljava/lang/Integer;)V

    goto :goto_2

    .line 552
    :cond_2
    new-array v2, v5, [Landroid/view/View;

    iget-object v3, p0, Lpc;->J:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v3

    sget v4, Lla;->config_apl_ln_prazo:I

    invoke-virtual {v3, v4}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lpc;->a([Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 556
    goto/16 :goto_1
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 770
    :try_start_0
    invoke-direct {p0}, Lpc;->T()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 772
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lpc;->a(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v0

    .line 773
    invoke-direct {p0, p1, v0}, Lpc;->a(Landroid/widget/TextView;Ljava/util/Calendar;)Landroid/app/DatePickerDialog;

    move-result-object v1

    .line 774
    invoke-direct {p0, v1, v0}, Lpc;->a(Landroid/app/DatePickerDialog;Ljava/util/Calendar;)V

    .line 775
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v0

    .line 778
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lpc;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lpc;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lpc;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lpc;->a(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic a(Lpc;Landroid/widget/EditText;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lpc;->a(Landroid/widget/EditText;Z)V

    return-void
.end method

.method static synthetic a(Lpc;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lpc;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lpc;[Landroid/view/View;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lpc;->b([Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lpc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 1066
    :goto_0
    if-eqz v1, :cond_1

    .line 1067
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lkx;->inv_white_three:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1072
    :goto_1
    iget-object v2, p0, Lpc;->r:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1073
    iget-object v1, p0, Lpc;->r:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1074
    return-void

    .line 1063
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 1069
    :cond_1
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lkx;->inv_brownish_grey:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method static synthetic a(Lpc;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lpc;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lpc;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lpc;->aa:Z

    return p1
.end method

.method static synthetic aa(Lpc;)Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lpc;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic ab(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->Q()V

    return-void
.end method

.method static synthetic ac(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lpc;->goBack()V

    return-void
.end method

.method static synthetic ad(Lpc;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->T()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ae(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic af(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic ag(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic ah(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic ai(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic aj(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic ak(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic al(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->Y()V

    return-void
.end method

.method static synthetic am(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lpc;->i()V

    return-void
.end method

.method static synthetic an(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lpc;->goBack()V

    return-void
.end method

.method static synthetic ao(Lpc;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->s:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic ap(Lpc;)Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lpc;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic aq(Lpc;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->P:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ar(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->S()V

    return-void
.end method

.method static synthetic as(Lpc;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->O:Landroid/view/View;

    return-object v0
.end method

.method static synthetic at(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lpc;->goBack()V

    return-void
.end method

.method static synthetic au(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lpc;->goBack()V

    return-void
.end method

.method static synthetic b(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic b(Lpc;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lpc;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lpc;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lpc;->d(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 871
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 872
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 873
    return-void
.end method

.method static synthetic b(Lpc;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lpc;->a(Z)V

    return-void
.end method

.method static synthetic b(Lpc;[Landroid/view/View;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lpc;->a([Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1491
    invoke-virtual {p0, p1}, Lpc;->b(Landroid/view/View;)V

    .line 1492
    iget-object v0, p0, Lpc;->r:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 1493
    return-void
.end method

.method static synthetic c(Lpc;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lpc;->e(Ljava/util/Calendar;)V

    return-void
.end method

.method private c(Ljava/util/Calendar;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 876
    if-nez p1, :cond_0

    .line 883
    :goto_0
    return v1

    .line 880
    :cond_0
    iget-object v2, p0, Lpc;->m:Lacg;

    invoke-virtual {v2}, Lacg;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POUPAN\u00c7A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 881
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0x1c

    if-le v2, v4, :cond_1

    move v2, v0

    .line 883
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lpc;->c:Lace;

    invoke-virtual {v2}, Lace;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 881
    goto :goto_1

    :cond_2
    move v0, v1

    .line 883
    goto :goto_2
.end method

.method private d(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 898
    invoke-static {p1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-direct {p0, p1}, Lpc;->e(Ljava/util/Calendar;)V

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_name_aplicar_data_acao:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpc;->c:Lace;

    .line 904
    invoke-virtual {v4}, Lace;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lpc;->c:Lace;

    .line 905
    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lpc;->c:Lace;

    .line 906
    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 903
    invoke-virtual {v1, v2, v3}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v2

    sget v3, Llg;->tag_valor_data_hoje:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 902
    invoke-static {v1, v2}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hoje - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    :goto_0
    return-object v0

    .line 912
    :cond_0
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_name_aplicar_data_acao:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpc;->c:Lace;

    .line 913
    invoke-virtual {v4}, Lace;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lpc;->c:Lace;

    .line 914
    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lpc;->c:Lace;

    .line 915
    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 912
    invoke-virtual {v1, v2, v3}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v2

    sget v3, Llg;->tag_valor_data_agendada:I

    invoke-virtual {v2, v3}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 911
    invoke-static {v1, v2}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lpc;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpc;->U()V

    return-void
.end method

.method static synthetic e(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private e(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 923
    invoke-static {p1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lpc;->c:Lace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lace;->g(Z)V

    .line 930
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lpc;->c:Lace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lace;->g(Z)V

    goto :goto_0
.end method

.method static synthetic f(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private f(Ljava/util/Calendar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1418
    iget-object v0, p0, Lpc;->c:Lace;

    iget-object v1, p0, Lpc;->c:Lace;

    invoke-virtual {v1}, Lace;->j()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->b(Ljava/lang/Double;)V

    .line 1419
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, p1}, Lace;->b(Ljava/util/Calendar;)V

    .line 1420
    iget-object v0, p0, Lpc;->c:Lace;

    iget-object v1, p0, Lpc;->c:Lace;

    invoke-virtual {v1}, Lace;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->b(Ljava/lang/Integer;)V

    .line 1421
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, v2}, Lace;->a(Ljava/lang/Double;)V

    .line 1422
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, v2}, Lace;->a(Ljava/util/Calendar;)V

    .line 1423
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-virtual {v0, v2}, Lace;->a(Ljava/lang/Integer;)V

    .line 1425
    iget-object v0, p0, Lpc;->G:Landroid/widget/TextView;

    sget v1, Llg;->config_apl_txt_data_primeira_aplicacao:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1426
    iget-object v0, p0, Lpc;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lpc;->c:Lace;

    invoke-virtual {v1}, Lace;->n()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    iget-object v0, p0, Lpc;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    return-void
.end method

.method static synthetic g(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic h(Lpc;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->U:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lpc;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method static synthetic k(Lpc;)Lacg;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->m:Lacg;

    return-object v0
.end method

.method static synthetic l(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lpc;->s()V

    .line 153
    invoke-direct {p0}, Lpc;->r()V

    .line 154
    invoke-direct {p0}, Lpc;->q()V

    .line 155
    invoke-direct {p0}, Lpc;->p()V

    .line 156
    invoke-direct {p0}, Lpc;->o()V

    .line 157
    invoke-direct {p0}, Lpc;->n()V

    .line 158
    invoke-direct {p0}, Lpc;->m()V

    .line 159
    return-void
.end method

.method static synthetic m(Lpc;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->R:Landroid/view/View;

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lpc;->O:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lpc;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    return-void
.end method

.method static synthetic n(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_btn_prazo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lpc;->v:Landroid/widget/ImageButton;

    .line 168
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_txt_prazo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lpc;->x:Landroid/widget/EditText;

    .line 169
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_txt_validacao_prazo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->J:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_container_prazo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpc;->R:Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->container_contas:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpc;->L:Landroid/view/View;

    .line 172
    return-void
.end method

.method static synthetic o(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_btn_calendario:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lpc;->u:Landroid/widget/ImageButton;

    .line 176
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_lbl_data:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->G:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_txt_data:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->D:Landroid/widget/TextView;

    .line 178
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_txt_validacao_data:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->E:Landroid/widget/TextView;

    .line 179
    return-void
.end method

.method static synthetic p(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_amount_to_invest:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    iput-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    .line 183
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_btn_aplicar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpc;->q:Landroid/widget/Button;

    .line 184
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_btn_programar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpc;->p:Landroid/widget/Button;

    .line 185
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->dialog_pzr_linha_valor:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpc;->N:Landroid/view/View;

    .line 186
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->dialog_pzr_txt_validacao_valor:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->z:Landroid/widget/TextView;

    .line 187
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_container_valor:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpc;->S:Landroid/widget/LinearLayout;

    .line 188
    return-void
.end method

.method static synthetic q(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_container_taxa_adm:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpc;->T:Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_txt_taxa_adm:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->I:Landroid/widget/TextView;

    .line 193
    return-void
.end method

.method static synthetic r(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_container_rentabilidade:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpc;->U:Landroid/widget/LinearLayout;

    .line 197
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_rentabilidade_progress:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lpc;->s:Landroid/widget/ProgressBar;

    .line 198
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_ic_rentabilidade:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lpc;->t:Landroid/widget/ImageButton;

    .line 199
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_lbl_rentabilide:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->A:Landroid/widget/TextView;

    .line 200
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_txt_rentabilide:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->F:Landroid/widget/TextView;

    .line 201
    return-void
.end method

.method static synthetic s(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lpc;->w:Landroid/widget/ImageButton;

    .line 205
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->C:Landroid/widget/TextView;

    .line 206
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_main_view:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpc;->O:Landroid/view/View;

    .line 207
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpc;->P:Landroid/view/View;

    .line 208
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->dialog_pzr_seletor_container:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpc;->Q:Landroid/view/View;

    .line 209
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_nome_produto:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->K:Landroid/widget/TextView;

    .line 210
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_container_resgate:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpc;->M:Landroid/view/View;

    .line 211
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_txt_resgate:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->B:Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_mensagem:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpc;->H:Landroid/widget/TextView;

    .line 213
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Lla;->config_apl_btn_continuar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpc;->r:Landroid/widget/Button;

    .line 214
    return-void
.end method

.method static synthetic t(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private t()Z
    .locals 2

    .prologue
    .line 522
    sget-object v0, Labt;->PROGRESSIVE_INDEX:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpc;->n:Lom;

    .line 524
    invoke-virtual {v1, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    .line 524
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic u(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private u()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lpc;->S()V

    .line 529
    return-void
.end method

.method static synthetic v(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 561
    sget-object v0, Labt;->DEADLINES_LIST:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    :goto_0
    return-object v0

    .line 568
    :cond_0
    sget-object v0, Labt;->MIN_DEADLINE:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpc;->n:Lom;

    invoke-virtual {v2, v0}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic w(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private w()Ljava/lang/Double;
    .locals 3

    .prologue
    .line 574
    sget-object v0, Labt;->DEADLINES_LIST:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 577
    sget-object v1, Labt;->MIN_DEADLINE:Labt;

    invoke-virtual {v1}, Labt;->getName()Ljava/lang/String;

    move-result-object v1

    .line 578
    iget-object v2, p0, Lpc;->n:Lom;

    invoke-virtual {v2, v1}, Lom;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    iget-object v0, p0, Lpc;->n:Lom;

    invoke-virtual {v0, v1}, Lom;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    .line 580
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 582
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic x(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private x()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 589
    sget-object v0, Labt;->DEADLINES_LIST:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 594
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    .line 596
    :cond_0
    sget-object v0, Labt;->MAX_DEADLINE:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lpc;->n:Lom;

    invoke-virtual {v1, v0}, Lom;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic y(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private y()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 602
    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 604
    sget v0, Llc;->layout_prazo_dialog:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_3

    .line 607
    sget v0, Lla;->title:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 613
    :goto_0
    sget v0, Lla;->dialog_pzr_btn_cancel:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 614
    sget v1, Lla;->dialog_pzr_btn_salvar:I

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 615
    sget v2, Lla;->dialog_pzr_seletor_container:I

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 616
    sget v2, Lla;->dialog_pzr_txt_validacao_valor:I

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 618
    sget v3, Lla;->dialog_pzr_campo_prazo:I

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lpc;->y:Landroid/widget/EditText;

    .line 619
    iget-object v3, p0, Lpc;->y:Landroid/widget/EditText;

    iget-object v6, p0, Lpc;->x:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " dias"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    sget-object v3, Labt;->ANOTHER_DEADLINE_INDEX:Labt;

    invoke-virtual {v3}, Labt;->getName()Ljava/lang/String;

    move-result-object v3

    .line 622
    iget-object v6, p0, Lpc;->n:Lom;

    invoke-virtual {v6, v3}, Lom;->d(Ljava/lang/String;)Z

    move-result v3

    .line 623
    iget-object v6, p0, Lpc;->y:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 625
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v3

    invoke-virtual {v3}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Llg;->config_apl_txt_prazo_entre_mensagem:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 627
    invoke-direct {p0}, Lpc;->w()Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v9

    .line 628
    invoke-direct {p0}, Lpc;->x()Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    .line 626
    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    new-instance v2, Lpi;

    invoke-direct {v2, p0, v4}, Lpi;-><init>(Lpc;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    new-instance v0, Lpj;

    invoke-direct {v0, p0, v4}, Lpj;-><init>(Lpc;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    invoke-direct {p0, v4}, Lpc;->a(Landroid/app/Dialog;)V

    .line 664
    iget-object v0, p0, Lpc;->Y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpc;->Y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v10, :cond_1

    .line 665
    :cond_0
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 668
    :cond_1
    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 669
    new-instance v0, Lpk;

    invoke-direct {v0, p0, v4}, Lpk;-><init>(Lpc;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 678
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 679
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 681
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 686
    :cond_2
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 687
    return-void

    .line 609
    :cond_3
    sget v0, Lla;->title:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 610
    sget v0, Llg;->app_prazo_dialog:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto/16 :goto_0
.end method

.method static synthetic z(Lpc;)Lace;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpc;->c:Lace;

    return-object v0
.end method

.method private z()V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0}, Lpc;->A()V

    .line 819
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 218
    invoke-super {p0}, Lacy;->a()V

    .line 220
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_aplicar_acao:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lpc;->m:Lacg;

    .line 221
    invoke-virtual {v4}, Lacg;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lpc;->m:Lacg;

    .line 222
    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lpc;->m:Lacg;

    .line 223
    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 220
    invoke-virtual {v0, v1, v2}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_selecionarConta:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method protected b()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 230
    invoke-super {p0}, Lacy;->b()V

    .line 232
    iget-object v0, p0, Lpc;->K:Landroid/widget/TextView;

    iget-object v3, p0, Lpc;->m:Lacg;

    invoke-virtual {v3}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lpc;->C:Landroid/widget/TextView;

    sget v3, Llg;->app_aplicar:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v0, p0, Lpc;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lpc;->P:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lpc;->w:Landroid/widget/ImageButton;

    new-instance v3, Lpd;

    invoke-direct {v3, p0}, Lpd;-><init>(Lpc;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lpc;->q:Landroid/widget/Button;

    iget-object v3, p0, Lpc;->X:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Lpc;->q:Landroid/widget/Button;

    iget v3, p0, Lpc;->k:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 248
    iget-object v0, p0, Lpc;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lpc;->q:Landroid/widget/Button;

    new-instance v3, Lpo;

    invoke-direct {v3, p0}, Lpo;-><init>(Lpc;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lpc;->p:Landroid/widget/Button;

    iget-object v3, p0, Lpc;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lpc;->p:Landroid/widget/Button;

    iget v3, p0, Lpc;->j:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 265
    iget-object v0, p0, Lpc;->p:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lpc;->p:Landroid/widget/Button;

    new-instance v3, Lqd;

    invoke-direct {v3, p0}, Lqd;-><init>(Lpc;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lpc;->r:Landroid/widget/Button;

    new-instance v3, Lqe;

    invoke-direct {v3, p0}, Lqe;-><init>(Lpc;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    sget-object v0, Labt;->PROGRESSIVE_INDEX:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v3, Llm;

    invoke-direct {v3}, Llm;-><init>()V

    .line 334
    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v0}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llm;->g(Ljava/lang/String;)V

    .line 336
    iget-object v4, p0, Lpc;->c:Lace;

    invoke-virtual {v4, v3}, Lace;->a(Llm;)V

    .line 338
    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 339
    iget-object v3, p0, Lpc;->t:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 340
    iget-object v3, p0, Lpc;->t:Landroid/widget/ImageButton;

    new-instance v4, Lqf;

    invoke-direct {v4, p0}, Lqf;-><init>(Lpc;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v3, p0, Lpc;->A:Landroid/widget/TextView;

    new-instance v4, Lqg;

    invoke-direct {v4, p0}, Lqg;-><init>(Lpc;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :goto_0
    sget-object v3, Labt;->PROFITABILITY:Labt;

    invoke-virtual {v3}, Labt;->getName()Ljava/lang/String;

    move-result-object v3

    .line 358
    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v3}, Lom;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v0}, Lom;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    :cond_0
    iget-object v0, p0, Lpc;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    :goto_1
    iget-object v0, p0, Lpc;->S:Landroid/widget/LinearLayout;

    new-instance v4, Lqh;

    invoke-direct {v4, p0}, Lqh;-><init>(Lpc;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lpc;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    new-instance v4, Lqi;

    invoke-direct {v4, p0}, Lqi;-><init>(Lpc;)V

    invoke-virtual {v0, v4}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a(Laay;)V

    .line 383
    iget-object v0, p0, Lpc;->x:Landroid/widget/EditText;

    new-instance v4, Lqj;

    invoke-direct {v4, p0}, Lqj;-><init>(Lpc;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 391
    iget-object v0, p0, Lpc;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v4

    invoke-virtual {v4}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Llg;->config_apl_txt_valor_minimo:I

    new-array v6, v8, [Ljava/lang/Object;

    .line 392
    invoke-direct {p0}, Lpc;->C()Ljava/lang/Double;

    move-result-object v7

    invoke-static {v7}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 391
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    sget-object v0, Labt;->MONTHLY_SCHEDULE_INDEX:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 395
    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v4

    .line 397
    iget-object v5, p0, Lpc;->Q:Landroid/view/View;

    if-eqz v4, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v5, p0, Lpc;->A:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    sget v0, Llg;->config_apl_txt_rentabilidade_12_meses:I

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 400
    invoke-direct {p0}, Lpc;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 401
    iget-object v0, p0, Lpc;->F:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "At\u00e9 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lpc;->n:Lom;

    invoke-virtual {v5, v3}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_4
    sget-object v0, Labt;->REDEMPTION_TYPE:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 407
    iget-object v3, p0, Lpc;->M:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v3, p0, Lpc;->B:Landroid/widget/TextView;

    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v0}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v3, p0, Lpc;->c:Lace;

    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v0}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lace;->c(Ljava/lang/String;)V

    .line 414
    :goto_5
    sget-object v0, Labt;->INVESTMENT_SCHEDULING_INDEX:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 416
    iget-object v0, p0, Lpc;->u:Landroid/widget/ImageButton;

    new-instance v3, Lpe;

    invoke-direct {v3, p0}, Lpe;-><init>(Lpc;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    :goto_6
    sget-object v0, Labt;->INVESTMENT_HOUR_LIMIT:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 430
    iget-object v3, p0, Lpc;->E:Landroid/widget/TextView;

    .line 431
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v4

    invoke-virtual {v4}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Llg;->config_apl_txt_data_validacao:I

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lpc;->n:Lom;

    .line 433
    invoke-virtual {v7, v0}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 431
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_7
    invoke-direct {p0}, Lpc;->v()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null dias"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 439
    iget-object v0, p0, Lpc;->R:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :goto_8
    sget-object v0, Labt;->ANNUAL_ADMIN_FEE:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 446
    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 447
    iget-object v3, p0, Lpc;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object v3, p0, Lpc;->I:Landroid/widget/TextView;

    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v0}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v3, p0, Lpc;->c:Lace;

    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v0}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lace;->e(Ljava/lang/String;)V

    .line 454
    :goto_9
    sget-object v0, Labt;->ANOTHER_DEADLINE_INDEX:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 456
    sget-object v0, Labt;->DEADLINES_LIST:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_d

    .line 458
    :cond_1
    iget-object v0, p0, Lpc;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 459
    iget-object v0, p0, Lpc;->x:Landroid/widget/EditText;

    new-instance v3, Lpf;

    invoke-direct {v3, p0}, Lpf;-><init>(Lpc;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 465
    iget-object v0, p0, Lpc;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 467
    sget-object v0, Labt;->MIN_DEADLINE:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v3, p0, Lpc;->J:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v3, p0, Lpc;->J:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v4

    invoke-virtual {v4}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Llg;->config_apl_txt_prazo_mensagem:I

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lpc;->n:Lom;

    .line 471
    invoke-virtual {v7, v0}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 470
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :goto_a
    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 499
    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_11

    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->c()Z

    move-result v0

    if-nez v0, :cond_11

    .line 500
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpc;->a(Ljava/lang/Boolean;)V

    .line 519
    :cond_2
    :goto_b
    return-void

    .line 354
    :cond_3
    iget-object v3, p0, Lpc;->t:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 361
    :cond_4
    iget-object v0, p0, Lpc;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 397
    goto/16 :goto_2

    .line 398
    :cond_6
    sget v0, Llg;->config_apl_txt_rentabilidade:I

    goto/16 :goto_3

    .line 403
    :cond_7
    iget-object v0, p0, Lpc;->F:Landroid/widget/TextView;

    iget-object v4, p0, Lpc;->n:Lom;

    invoke-virtual {v4, v3}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 411
    :cond_8
    iget-object v0, p0, Lpc;->M:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 425
    :cond_9
    iget-object v0, p0, Lpc;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 435
    :cond_a
    iget-object v0, p0, Lpc;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 441
    :cond_b
    iget-object v0, p0, Lpc;->x:Landroid/widget/EditText;

    invoke-direct {p0}, Lpc;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lpc;->c:Lace;

    invoke-direct {p0}, Lpc;->v()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[^0-9]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lace;->a(Ljava/lang/Integer;)V

    goto/16 :goto_8

    .line 451
    :cond_c
    iget-object v0, p0, Lpc;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 473
    :cond_d
    iget-object v0, p0, Lpc;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 474
    iget-object v0, p0, Lpc;->v:Landroid/widget/ImageButton;

    new-instance v3, Lpg;

    invoke-direct {v3, p0}, Lpg;-><init>(Lpc;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lpc;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 483
    :cond_e
    sget-object v0, Labt;->DEADLINES_LIST:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 484
    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lpc;->n:Lom;

    invoke-virtual {v3, v0}, Lom;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_10

    .line 485
    :cond_f
    iget-object v0, p0, Lpc;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 494
    :goto_c
    iget-object v0, p0, Lpc;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 495
    iget-object v0, p0, Lpc;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 487
    :cond_10
    iget-object v0, p0, Lpc;->v:Landroid/widget/ImageButton;

    new-instance v3, Lph;

    invoke-direct {v3, p0}, Lph;-><init>(Lpc;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    .line 501
    :cond_11
    iget-object v0, p0, Lpc;->V:Ltk;

    if-eqz v0, :cond_13

    .line 502
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpc;->a(Ljava/lang/Boolean;)V

    .line 505
    iget-object v0, p0, Lpc;->m:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 506
    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpc;->V:Ltk;

    invoke-virtual {v3}, Ltk;->j()Lsv;

    move-result-object v3

    invoke-virtual {v3}, Lsv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 507
    invoke-virtual {p0, v0}, Lpc;->a(Lou;)V

    goto/16 :goto_b

    .line 513
    :cond_13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpc;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_b

    .line 517
    :cond_14
    iget-object v0, p0, Lpc;->L:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 1183
    invoke-super {p0}, Lacy;->c()V

    .line 1185
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->c()Lou;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1186
    new-instance v0, Loo;

    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Loo;-><init>(Landroid/content/Context;)V

    .line 1188
    sget-object v1, Labt;->INVESTMENT_HOUR_LIMIT:Labt;

    invoke-virtual {v1}, Labt;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1189
    iget-object v2, p0, Lpc;->m:Lacg;

    .line 1190
    invoke-virtual {v2}, Lacg;->n()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpc;->m:Lacg;

    .line 1191
    invoke-virtual {v3}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpc;->n:Lom;

    .line 1192
    invoke-virtual {v4, v1}, Lom;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lpv;

    invoke-direct {v4, p0}, Lpv;-><init>(Lpc;)V

    .line 1189
    invoke-virtual {v0, v2, v3, v1, v4}, Loo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lot;)V

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lpc;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    invoke-virtual {p0}, Lpc;->j()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 1482
    invoke-virtual {p0}, Lpc;->e()Lack;

    move-result-object v0

    new-instance v1, Lqc;

    invoke-direct {v1, p0}, Lqc;-><init>(Lpc;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laas;)V

    .line 1488
    return-void
.end method
