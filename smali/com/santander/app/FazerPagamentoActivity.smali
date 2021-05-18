.class public Lcom/santander/app/FazerPagamentoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final A:Ljava/lang/String; = "type_pagamento"

.field private static final B:Ljava/lang/String; = "SCAN_RESULT"

.field private static Q:Ljava/lang/String; = null

.field private static S:Lfuz; = null

.field private static final w:Ljava/lang/String; = "FazerPagamentoActivity"

.field private static final x:Ljava/lang/String; = "dd/MM/yyyy"

.field private static final y:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final z:Ljava/lang/String; = "yyyyMMdd"


# instance fields
.field private C:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfpm;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/support/v4/view/ViewPager;

.field private E:Lcom/santander/app/widget/Indicator;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Likl;

.field private I:Landroid/app/Dialog;

.field private J:Landroid/app/Activity;

.field private K:Lfhl;

.field private L:Lfvi;

.field private M:Lfhm;

.field private N:Lfvk;

.field private O:Lfhk;

.field private P:Lfvh;

.field private R:Lghu;

.field public a:Lfos;

.field public b:Lfos;

.field public c:Lfos;

.field public d:Lfos;

.field public e:Lfos;

.field public f:Lfos;

.field public g:Lfur;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoActivity;->I:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoActivity;Lfvh;)Lfvh;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoActivity;->P:Lfvh;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoActivity;Lfvi;)Lfvi;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoActivity;Lfvk;)Lfvk;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    return-object p1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/santander/app/FazerPagamentoActivity;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lfuz;)V
    .locals 0

    .prologue
    .line 123
    sput-object p0, Lcom/santander/app/FazerPagamentoActivity;->S:Lfuz;

    .line 124
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    sput-object p0, Lcom/santander/app/FazerPagamentoActivity;->Q:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public static b()Lfuz;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/santander/app/FazerPagamentoActivity;->S:Lfuz;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/FazerPagamentoActivity;)Lfvi;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 880
    const/4 v9, 0x1

    .line 882
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpm;

    invoke-virtual {v0}, Lfpm;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 883
    const v0, 0x7f1008f6

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 884
    const v1, 0x7f1008f7

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 885
    const v2, 0x7f1008f8

    invoke-virtual {p0, v2}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 886
    const v3, 0x7f1008f9

    invoke-virtual {p0, v3}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 887
    const v4, 0x7f100906

    invoke-virtual {p0, v4}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 888
    const v5, 0x7f100907

    invoke-virtual {p0, v5}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 889
    const v6, 0x7f100908

    invoke-virtual {p0, v6}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 890
    const v7, 0x7f100909

    invoke-virtual {p0, v7}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 891
    const v8, 0x7f100901

    invoke-virtual {p0, v8}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 893
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x23

    if-le v10, v11, :cond_1

    .line 894
    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 895
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 896
    const/4 v0, 0x5

    const/16 v10, 0xa

    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 897
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 898
    const/16 v0, 0xa

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 899
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 900
    const/16 v0, 0xf

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 901
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 902
    const/16 v0, 0x15

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 903
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 904
    const/16 v0, 0x1a

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 905
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 906
    const/16 v0, 0x20

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 907
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 908
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 909
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 910
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 911
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    move v0, v9

    :goto_0
    move v9, v0

    .line 938
    :cond_0
    :goto_1
    return v9

    .line 913
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpm;

    invoke-virtual {v0}, Lfpm;->a()I

    move-result v0

    if-nez v0, :cond_4

    .line 916
    const v0, 0x7f1008f6

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 917
    const v1, 0x7f1008f7

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 918
    const v2, 0x7f1008f8

    invoke-virtual {p0, v2}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 919
    const v3, 0x7f1008f9

    invoke-virtual {p0, v3}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 921
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x25

    if-le v4, v5, :cond_3

    .line 922
    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 923
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 924
    const/16 v0, 0xc

    const/16 v4, 0x18

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 925
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 926
    const/16 v0, 0x18

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 927
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 928
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 929
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_1

    .line 931
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 933
    :cond_4
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpm;

    invoke-virtual {v0}, Lfpm;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 934
    const v0, 0x7f1008f6

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 935
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_1
.end method

.method public static synthetic c(Lcom/santander/app/FazerPagamentoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->I:Landroid/app/Dialog;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const-string v1, "type_pagamento"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/FazerPagamentoActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoActivity;->d()V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/FazerPagamentoActivity;)Lfvk;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    const-string v1, "type_pagamento"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    const-string v1, "type_pagamento"

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->g:Lfur;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 600
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    const-string v1, "type_pagamento"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 676
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/FazerPagamentoActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoActivity;->e()V

    return-void
.end method

.method public static synthetic g(Lcom/santander/app/FazerPagamentoActivity;)Lfvh;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->P:Lfvh;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 737
    const v0, 0x7f1005a5

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 738
    const v0, 0x7f100407

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    .line 739
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lfhh;

    invoke-direct {v2, p0}, Lfhh;-><init>(Lcom/santander/app/FazerPagamentoActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 753
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    .line 754
    new-instance v0, Lfpm;

    invoke-direct {v0}, Lfpm;-><init>()V

    .line 755
    const-string v2, "T\u00cdTULOS E CONTAS"

    invoke-virtual {v0, v2}, Lfpm;->a(Ljava/lang/String;)V

    .line 756
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lfpm;->a(I)V

    .line 757
    new-instance v0, Lfpm;

    invoke-direct {v0}, Lfpm;-><init>()V

    .line 758
    const-string v2, "T\u00cdTULOS EM CART\u00d3RIO"

    invoke-virtual {v0, v2}, Lfpm;->a(Ljava/lang/String;)V

    .line 759
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lfpm;->a(I)V

    .line 760
    new-instance v2, Lfpm;

    invoke-direct {v2}, Lfpm;-><init>()V

    .line 761
    const-string v3, "PAGAMENTO DE FATURA"

    invoke-virtual {v2, v3}, Lfpm;->a(Ljava/lang/String;)V

    .line 762
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lfpm;->a(I)V

    .line 764
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 766
    new-instance v0, Lfpx;

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    invoke-direct {v0, p0, v2}, Lfpx;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    .line 767
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 768
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->E:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfpx;->getCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 769
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 770
    const v0, 0x7f1004c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->G:Landroid/widget/ImageView;

    .line 772
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->G:Landroid/widget/ImageView;

    new-instance v2, Lfhi;

    invoke-direct {v2, p0}, Lfhi;-><init>(Lcom/santander/app/FazerPagamentoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    const v0, 0x7f1004c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->F:Landroid/widget/ImageView;

    .line 783
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->F:Landroid/widget/ImageView;

    new-instance v1, Lfhj;

    invoke-direct {v1, p0}, Lfhj;-><init>(Lcom/santander/app/FazerPagamentoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->E:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, v4}, Lcom/santander/app/widget/Indicator;->setVisibility(I)V

    .line 796
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 1102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1103
    const-string v1, "type_pagamento"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1104
    const-string v1, "pagamentoBean"

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1105
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1106
    return-void
.end method

.method public static synthetic h(Lcom/santander/app/FazerPagamentoActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoActivity;->f()V

    return-void
.end method


# virtual methods
.method public a(Lfur;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoActivity;->g:Lfur;

    .line 134
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1121
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1122
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 1123
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1124
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->onDestroy()V

    .line 1126
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1127
    const/4 v2, 0x1

    .line 1130
    :cond_0
    return v2

    .line 1123
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()Lfur;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->g:Lfur;

    return-object v0
.end method

.method public confirmarCartorio(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 603
    const-string v0, "Pagamentos_Pagamento_TitulosEmCatorio_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const v0, 0x7f1008b8

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentTextView;

    .line 607
    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_0

    .line 608
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 669
    :goto_0
    return-void

    .line 610
    :cond_0
    const v1, 0x7f1008b7

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/santander/app/widget/Carrossel;

    .line 612
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 613
    :goto_1
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v4}, Lmip;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->q()Lgvx;

    move-result-object v4

    invoke-interface {v4}, Lgvx;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 614
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v4}, Lmip;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->q()Lgvx;

    move-result-object v4

    invoke-interface {v4}, Lgvx;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 618
    :goto_2
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->s()Lght;

    move-result-object v2

    invoke-interface {v2}, Lght;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 620
    new-instance v6, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v6}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 621
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->s()Lght;

    move-result-object v2

    invoke-interface {v2}, Lght;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lghu;

    invoke-virtual {v2}, Lghu;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/santander/app/contacorrente/domain/Conta;->setAgencia(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->s()Lght;

    move-result-object v2

    invoke-interface {v2}, Lght;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lghu;

    invoke-virtual {v2}, Lghu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/santander/app/contacorrente/domain/Conta;->setCuenta(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->s()Lght;

    move-result-object v2

    invoke-interface {v2}, Lght;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lghu;

    invoke-virtual {v2}, Lghu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    .line 624
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->s()Lght;

    move-result-object v2

    invoke-interface {v2}, Lght;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lghu;

    invoke-virtual {v2}, Lghu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/santander/app/contacorrente/domain/Conta;->setDescricao(Ljava/lang/String;)V

    .line 625
    const-string v2, "CARTAOPAG"

    invoke-virtual {v6, v2}, Lcom/santander/app/contacorrente/domain/Conta;->setNomeBanco(Ljava/lang/String;)V

    .line 626
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 629
    :cond_2
    invoke-virtual {v1}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuu;

    .line 631
    const v2, 0x7f1008b9

    invoke-virtual {p0, v2}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/santander/app/widget/Carrossel;

    .line 632
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 633
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->e:Lfos;

    invoke-virtual {v4}, Lfos;->b()Ljava/lang/String;

    move-result-object v4

    .line 634
    invoke-virtual {v2}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 635
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 636
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->f:Lfos;

    invoke-virtual {v2}, Lfos;->b()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v5

    invoke-virtual {v5, v7}, Lhau;->a(Z)V

    .line 642
    :goto_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 643
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 644
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 647
    :try_start_0
    const-string v8, "-"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 648
    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 651
    :goto_4
    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 656
    :goto_5
    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v5, Lfvh;

    invoke-direct {v5}, Lfvh;-><init>()V

    iput-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->P:Lfvh;

    .line 660
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->P:Lfvh;

    invoke-virtual {v1}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfvh;->n(Ljava/lang/String;)V

    .line 661
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->P:Lfvh;

    invoke-virtual {v1}, Lfuu;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lfvh;->p(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->P:Lfvh;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfvh;->o(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->P:Lfvh;

    invoke-virtual {v1, v2}, Lfvh;->q(Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->P:Lfvh;

    invoke-virtual {v1, v0}, Lfvh;->v(Ljava/lang/String;)V

    .line 666
    new-instance v0, Lfhk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhk;-><init>(Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->O:Lfhk;

    .line 667
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->O:Lfhk;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 639
    :cond_3
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v2

    invoke-virtual {v2, v3}, Lhau;->a(Z)V

    move-object v2, v4

    move-object v4, v5

    goto :goto_3

    .line 650
    :cond_4
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_4

    .line 652
    :catch_0
    move-exception v5

    .line 653
    const-string v6, "FazerPagamentoActivity"

    invoke-virtual {v5}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public confirmarContas(Landroid/view/View;)V
    .locals 13

    .prologue
    const/16 v5, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    const v0, 0x7f1008f6

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 161
    const v1, 0x7f1008f7

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 162
    const v2, 0x7f1008f8

    invoke-virtual {p0, v2}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 163
    const v3, 0x7f1008f9

    invoke-virtual {p0, v3}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 165
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 167
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 168
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 170
    :cond_0
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->J:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 172
    :cond_1
    const v4, 0x7f1008b7

    invoke-virtual {p0, v4}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/santander/app/widget/Carrossel;

    .line 174
    new-instance v5, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v5}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 175
    new-instance v8, Lghu;

    invoke-direct {v8}, Lghu;-><init>()V

    iput-object v8, p0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    .line 178
    invoke-virtual {v4}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v8

    iget-object v9, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v9}, Lmip;->f()Lmir;

    move-result-object v9

    invoke-virtual {v9}, Lmir;->q()Lgvx;

    move-result-object v9

    invoke-interface {v9}, Lgvx;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 179
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v5}, Lmip;->f()Lmir;

    move-result-object v5

    invoke-virtual {v5}, Lmir;->q()Lgvx;

    move-result-object v5

    invoke-interface {v5}, Lgvx;->a()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/santander/app/contacorrente/domain/Conta;

    move v5, v6

    move-object v8, v4

    .line 186
    :goto_1
    const v4, 0x7f1008b9

    invoke-virtual {p0, v4}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/santander/app/widget/Carrossel;

    .line 187
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 188
    iget-object v9, p0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    invoke-virtual {v9}, Lfos;->b()Ljava/lang/String;

    move-result-object v9

    .line 189
    invoke-virtual {v4}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 190
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 191
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    invoke-virtual {v4}, Lfos;->b()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v10

    invoke-virtual {v10, v7}, Lhau;->a(Z)V

    move-object v7, v9

    .line 197
    :goto_2
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "dd/MM/yyyy"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMdd"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 202
    :try_start_0
    const-string v12, "-"

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 203
    invoke-virtual {v10, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 206
    :goto_3
    invoke-virtual {v11, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 211
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    if-nez v5, :cond_5

    .line 218
    new-instance v1, Lfvi;

    invoke-direct {v1}, Lfvi;-><init>()V

    iput-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    .line 219
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v5}, Lfvi;->a(Z)V

    .line 220
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v8}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvi;->a(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v8}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvi;->d(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v0}, Lfvi;->c(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->b(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v0, v4}, Lfvi;->e(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v0, v4}, Lfvi;->g(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lfvi;->o(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    const-string v1, "CB"

    invoke-virtual {v0, v1}, Lfvi;->h(Ljava/lang/String;)V

    .line 243
    :goto_5
    new-instance v0, Lfhl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhl;-><init>(Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->K:Lfhl;

    .line 244
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->K:Lfhl;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 181
    :cond_2
    iget-object v8, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v8}, Lmip;->f()Lmir;

    move-result-object v8

    invoke-virtual {v8}, Lmir;->s()Lght;

    move-result-object v8

    invoke-interface {v8}, Lght;->d()Ljava/util/List;

    move-result-object v8

    .line 182
    invoke-virtual {v4}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v4

    iget-object v9, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v9}, Lmip;->f()Lmir;

    move-result-object v9

    invoke-virtual {v9}, Lmir;->q()Lgvx;

    move-result-object v9

    invoke-interface {v9}, Lgvx;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v4, v9

    .line 181
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lghu;

    iput-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    move-object v8, v5

    move v5, v7

    .line 183
    goto/16 :goto_1

    .line 194
    :cond_3
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v4

    invoke-virtual {v4, v6}, Lhau;->a(Z)V

    move-object v4, v9

    move-object v7, v10

    goto/16 :goto_2

    .line 205
    :cond_4
    :try_start_1
    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto/16 :goto_3

    .line 207
    :catch_0
    move-exception v9

    .line 208
    const-string v10, "FazerPagamentoActivity"

    invoke-virtual {v9}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 229
    :cond_5
    new-instance v1, Lfvi;

    invoke-direct {v1}, Lfvi;-><init>()V

    iput-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    .line 230
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v5}, Lfvi;->a(Z)V

    .line 231
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvi;->a(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvi;->d(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v0}, Lfvi;->c(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->b(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v0, v4}, Lfvi;->e(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v0, v4}, Lfvi;->g(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    invoke-virtual {v1}, Lghu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->j(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    invoke-virtual {v1}, Lghu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->k(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lfvi;->o(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    const-string v1, "C1"

    invoke-virtual {v0, v1}, Lfvi;->h(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public confirmarContas(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 249
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 251
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->J:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090395

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "4"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    const v0, 0x7f1008b7

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    .line 267
    new-instance v1, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v1}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 268
    new-instance v4, Lghu;

    invoke-direct {v4}, Lghu;-><init>()V

    iput-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    .line 271
    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v4

    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v5}, Lmip;->f()Lmir;

    move-result-object v5

    invoke-virtual {v5}, Lmir;->q()Lgvx;

    move-result-object v5

    invoke-interface {v5}, Lgvx;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 272
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    move v1, v2

    move-object v4, v0

    .line 279
    :goto_1
    const v0, 0x7f1008b9

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    .line 280
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 281
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    invoke-virtual {v5}, Lfos;->b()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 283
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 284
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v6

    invoke-virtual {v6, v3}, Lhau;->a(Z)V

    move-object v3, v5

    .line 290
    :goto_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 291
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 292
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 295
    :try_start_0
    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 296
    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 299
    :goto_3
    invoke-virtual {v8, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 306
    :goto_4
    if-nez v1, :cond_5

    .line 307
    new-instance v5, Lfvi;

    invoke-direct {v5}, Lfvi;-><init>()V

    iput-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    .line 308
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v5, v1}, Lfvi;->a(Z)V

    .line 309
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v4}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lfvi;->a(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v4}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfvi;->d(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v7}, Lfvi;->c(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfvi;->b(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v0}, Lfvi;->e(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v0}, Lfvi;->g(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lfvi;->o(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    const-string v1, "CB"

    invoke-virtual {v0, v1}, Lfvi;->h(Ljava/lang/String;)V

    .line 332
    :goto_5
    new-instance v0, Lfhl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhl;-><init>(Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->K:Lfhl;

    .line 333
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->K:Lfhl;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 274
    :cond_2
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v4}, Lmip;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->s()Lght;

    move-result-object v4

    invoke-interface {v4}, Lght;->d()Ljava/util/List;

    move-result-object v4

    .line 275
    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v5}, Lmip;->f()Lmir;

    move-result-object v5

    invoke-virtual {v5}, Lmir;->q()Lgvx;

    move-result-object v5

    invoke-interface {v5}, Lgvx;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v0, v5

    .line 274
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    move-object v4, v1

    move v1, v3

    .line 276
    goto/16 :goto_1

    .line 287
    :cond_3
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhau;->a(Z)V

    move-object v0, v5

    move-object v3, v6

    goto/16 :goto_2

    .line 298
    :cond_4
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_3

    .line 300
    :catch_0
    move-exception v5

    .line 301
    const-string v6, "FazerPagamentoActivity"

    invoke-virtual {v5}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 318
    :cond_5
    new-instance v4, Lfvi;

    invoke-direct {v4}, Lfvi;-><init>()V

    iput-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    .line 319
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v4, v1}, Lfvi;->a(Z)V

    .line 320
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfvi;->a(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfvi;->d(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v7}, Lfvi;->c(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfvi;->b(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v0}, Lfvi;->e(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    invoke-virtual {v1, v0}, Lfvi;->g(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    invoke-virtual {v1}, Lghu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->j(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    invoke-virtual {v1}, Lghu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->k(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lfvi;->o(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->L:Lfvi;

    const-string v1, "C1"

    invoke-virtual {v0, v1}, Lfvi;->h(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public confirmarTitulos(Landroid/view/View;)V
    .locals 21

    .prologue
    .line 344
    const v1, 0x7f1008f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 345
    const v2, 0x7f1008f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 346
    const v3, 0x7f1008f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 347
    const v4, 0x7f1008f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 348
    const v5, 0x7f100906

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 349
    const v6, 0x7f100907

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 350
    const v7, 0x7f100908

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 351
    const v8, 0x7f100909

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 352
    const v9, 0x7f1008e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 354
    const v10, 0x7f100901

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 355
    const v11, 0x7f100903

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 358
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "0,00"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "0.00"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 359
    :cond_0
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_2

    .line 364
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_2

    .line 365
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_2

    .line 366
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x6

    if-lt v12, v13, :cond_2

    .line 367
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_2

    .line 368
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x6

    if-lt v12, v13, :cond_2

    .line 369
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_2

    .line 370
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xe

    if-lt v12, v13, :cond_2

    .line 371
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_2

    .line 372
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_3

    .line 374
    :cond_2
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    :cond_3
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_4

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09039b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    :cond_4
    const v12, 0x7f1008b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/santander/app/widget/Carrossel;

    .line 380
    new-instance v14, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v14}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 382
    const/4 v13, 0x0

    .line 383
    new-instance v15, Lghu;

    invoke-direct {v15}, Lghu;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    .line 384
    invoke-virtual {v12}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lmip;->f()Lmir;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lmir;->q()Lgvx;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lgvx;->a()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v14}, Lmip;->f()Lmir;

    move-result-object v14

    invoke-virtual {v14}, Lmir;->q()Lgvx;

    move-result-object v14

    invoke-interface {v14}, Lgvx;->a()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v12}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v12

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/santander/app/contacorrente/domain/Conta;

    move-object v14, v12

    .line 392
    :goto_1
    const v12, 0x7f1008b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/santander/app/widget/Carrossel;

    .line 393
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/santander/app/FazerPagamentoActivity;->c:Lfos;

    invoke-virtual {v15}, Lfos;->b()Ljava/lang/String;

    move-result-object v15

    .line 395
    invoke-virtual {v12}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v12

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_6

    .line 396
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 397
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/santander/app/FazerPagamentoActivity;->d:Lfos;

    invoke-virtual {v12}, Lfos;->b()Ljava/lang/String;

    move-result-object v12

    .line 398
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lhau;->a(Z)V

    .line 403
    :goto_2
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 404
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 406
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy"

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 407
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy-MM-dd"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 408
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyyMMdd"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 411
    :try_start_0
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 412
    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 415
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 417
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 418
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 423
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    .line 435
    const v1, 0x7f100905

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    if-eqz v1, :cond_9

    .line 437
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    :goto_5
    new-instance v2, Lfvk;

    invoke-direct {v2}, Lfvk;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v2, v13}, Lfvk;->a(Z)V

    .line 442
    if-nez v13, :cond_8

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v14}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lfvk;->d(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v14}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lfvk;->m(Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v2, v3}, Lfvk;->g(Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v15}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfvk;->e(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v2, v11}, Lfvk;->n(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v2, v11}, Lfvk;->s(Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v2, v1}, Lfvk;->A(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvk;->B(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lfvk;->S(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lfvk;->U(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v1, v10}, Lfvk;->p(Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    const-string v2, "CB"

    invoke-virtual {v1, v2}, Lfvk;->t(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    const-string v2, "CC"

    invoke-virtual {v1, v2}, Lfvk;->H(Ljava/lang/String;)V

    .line 474
    :goto_6
    new-instance v1, Lfhm;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lfhm;-><init>(Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->M:Lfhm;

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->M:Lfhm;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lfhm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 387
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v13}, Lmip;->f()Lmir;

    move-result-object v13

    invoke-virtual {v13}, Lmir;->s()Lght;

    move-result-object v13

    invoke-interface {v13}, Lght;->d()Ljava/util/List;

    move-result-object v13

    .line 388
    invoke-virtual {v12}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v15}, Lmip;->f()Lmir;

    move-result-object v15

    invoke-virtual {v15}, Lmir;->q()Lgvx;

    move-result-object v15

    invoke-interface {v15}, Lgvx;->a()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v12, v15

    .line 387
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lghu;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    .line 389
    const/4 v12, 0x1

    move v13, v12

    goto/16 :goto_1

    .line 400
    :cond_6
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v12

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lhau;->a(Z)V

    move-object v12, v15

    move-object/from16 v15, v16

    goto/16 :goto_2

    .line 414
    :cond_7
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    goto/16 :goto_3

    .line 419
    :catch_0
    move-exception v11

    move-object/from16 v20, v11

    move-object v11, v12

    move-object/from16 v12, v20

    .line 420
    :goto_7
    const-string v17, "FazerPagamentoActivity"

    invoke-virtual {v12}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 457
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lfvk;->d(Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lfvk;->m(Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v2, v3}, Lfvk;->g(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v15}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfvk;->e(Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v2, v11}, Lfvk;->s(Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v2, v1}, Lfvk;->A(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvk;->B(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lfvk;->S(Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lfvk;->U(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v1, v10}, Lfvk;->p(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    const-string v2, "C1"

    invoke-virtual {v1, v2}, Lfvk;->t(Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    const-string v2, "CC"

    invoke-virtual {v1, v2}, Lfvk;->H(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    invoke-virtual {v2}, Lghu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvk;->D(Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    invoke-virtual {v2}, Lghu;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvk;->C(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/santander/app/FazerPagamentoActivity;->R:Lghu;

    invoke-virtual {v2}, Lghu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfvk;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 419
    :catch_1
    move-exception v12

    goto/16 :goto_7

    :cond_9
    move-object v1, v2

    goto/16 :goto_5
.end method

.method public confirmarTitulos(Ljava/lang/String;Z)V
    .locals 14

    .prologue
    .line 481
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 483
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090395

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 488
    :cond_0
    const v0, 0x7f1008e5

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 490
    const v1, 0x7f100901

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 491
    const v2, 0x7f100903

    invoke-virtual {p0, v2}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 493
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 494
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    .line 497
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_3
    const v3, 0x7f1008b7

    invoke-virtual {p0, v3}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/santander/app/widget/Carrossel;

    .line 501
    new-instance v6, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v6}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 503
    const/4 v5, 0x0

    .line 504
    new-instance v4, Lghu;

    invoke-direct {v4}, Lghu;-><init>()V

    .line 505
    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v7

    iget-object v8, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v8}, Lmip;->f()Lmir;

    move-result-object v8

    invoke-virtual {v8}, Lmir;->q()Lgvx;

    move-result-object v8

    invoke-interface {v8}, Lgvx;->a()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 506
    iget-object v6, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v6}, Lmip;->f()Lmir;

    move-result-object v6

    invoke-virtual {v6}, Lmir;->q()Lgvx;

    move-result-object v6

    invoke-interface {v6}, Lgvx;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/santander/app/contacorrente/domain/Conta;

    move-object v6, v3

    .line 513
    :goto_1
    const v3, 0x7f1008b9

    invoke-virtual {p0, v3}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/santander/app/widget/Carrossel;

    .line 514
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 515
    iget-object v7, p0, Lcom/santander/app/FazerPagamentoActivity;->c:Lfos;

    invoke-virtual {v7}, Lfos;->b()Ljava/lang/String;

    move-result-object v7

    .line 516
    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_5

    .line 517
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 518
    iget-object v3, p0, Lcom/santander/app/FazerPagamentoActivity;->d:Lfos;

    invoke-virtual {v3}, Lfos;->b()Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lhau;->a(Z)V

    .line 524
    :goto_2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 525
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v8, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 528
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd"

    invoke-direct {v2, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 529
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMdd"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 532
    :try_start_0
    const-string v12, "-"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 533
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 536
    :goto_3
    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 538
    :try_start_1
    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 539
    invoke-virtual {v11, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    .line 546
    :goto_4
    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v8

    .line 547
    const v1, 0x7f100905

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 548
    if-eqz v1, :cond_9

    .line 549
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    :goto_5
    new-instance v8, Lfvk;

    invoke-direct {v8}, Lfvk;-><init>()V

    iput-object v8, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    .line 553
    iget-object v8, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v8, v5}, Lfvk;->a(Z)V

    .line 554
    if-nez v5, :cond_7

    .line 555
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v6}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfvk;->d(Ljava/lang/String;)V

    .line 556
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v6}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfvk;->m(Ljava/lang/String;)V

    .line 557
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v4, v9}, Lfvk;->g(Ljava/lang/String;)V

    .line 558
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfvk;->e(Ljava/lang/String;)V

    .line 559
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v4, v3}, Lfvk;->n(Ljava/lang/String;)V

    .line 560
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v4, v3}, Lfvk;->s(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v3, v1}, Lfvk;->A(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvk;->B(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0, v10}, Lfvk;->S(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0, v10}, Lfvk;->U(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0, v2}, Lfvk;->p(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    const-string v1, "CB"

    invoke-virtual {v0, v1}, Lfvk;->t(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lfvk;->H(Ljava/lang/String;)V

    .line 586
    :goto_6
    if-eqz p2, :cond_8

    .line 587
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoActivity;->h()V

    goto/16 :goto_0

    .line 508
    :cond_4
    iget-object v4, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v4}, Lmip;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->s()Lght;

    move-result-object v4

    invoke-interface {v4}, Lght;->d()Ljava/util/List;

    move-result-object v4

    .line 509
    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v5}, Lmip;->f()Lmir;

    move-result-object v5

    invoke-virtual {v5}, Lmir;->q()Lgvx;

    move-result-object v5

    invoke-interface {v5}, Lgvx;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v3, v5

    .line 508
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lghu;

    .line 510
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v3

    goto/16 :goto_1

    .line 521
    :cond_5
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lhau;->a(Z)V

    move-object v3, v7

    move-object v7, v8

    goto/16 :goto_2

    .line 535
    :cond_6
    :try_start_2
    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_3

    .line 540
    :catch_0
    move-exception v2

    move-object v13, v2

    move-object v2, v3

    move-object v3, v13

    .line 541
    :goto_7
    const-string v8, "FazerPagamentoActivity"

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4

    .line 569
    :cond_7
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfvk;->d(Ljava/lang/String;)V

    .line 570
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfvk;->m(Ljava/lang/String;)V

    .line 571
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v5, v9}, Lfvk;->g(Ljava/lang/String;)V

    .line 572
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfvk;->e(Ljava/lang/String;)V

    .line 573
    iget-object v5, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v5, v3}, Lfvk;->s(Ljava/lang/String;)V

    .line 574
    iget-object v3, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v3, v1}, Lfvk;->A(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvk;->B(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0, v10}, Lfvk;->S(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0, v10}, Lfvk;->U(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v0, v2}, Lfvk;->p(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    const-string v1, "C1"

    invoke-virtual {v0, v1}, Lfvk;->t(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lfvk;->H(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v4}, Lghu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->D(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v4}, Lghu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->C(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->N:Lfvk;

    invoke-virtual {v4}, Lghu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 589
    :cond_8
    new-instance v0, Lfhm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhm;-><init>(Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->M:Lfhm;

    .line 590
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->M:Lfhm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 540
    :catch_1
    move-exception v3

    goto/16 :goto_7

    :cond_9
    move-object v1, v8

    goto/16 :goto_5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const v5, 0x7f090819

    .line 679
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 681
    if-nez p1, :cond_2

    .line 682
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 683
    const-string v1, ""

    .line 684
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpm;

    invoke-virtual {v0}, Lfpm;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 685
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v1, Lmxe;

    invoke-direct {v1}, Lmxe;-><init>()V

    .line 688
    :try_start_0
    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Lmxe;->a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 721
    :cond_0
    :goto_0
    const-string v1, "[ERRO]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    const-string v2, "[ERRO]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 723
    const-string v0, ""

    .line 726
    :cond_1
    invoke-direct {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->b(Ljava/lang/String;)Z

    .line 733
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 734
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    const-string v0, ""

    .line 691
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpm;

    invoke-virtual {v0}, Lfpm;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 694
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    new-instance v1, Lmxd;

    invoke-direct {v1}, Lmxd;-><init>()V

    .line 697
    :try_start_1
    invoke-virtual {v1, v0}, Lmxd;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 698
    :catch_1
    move-exception v0

    .line 699
    const-string v0, ""

    .line 700
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_4
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpm;

    invoke-virtual {v0}, Lfpm;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 703
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    new-instance v1, Lmxd;

    invoke-direct {v1}, Lmxd;-><init>()V

    .line 706
    new-instance v2, Lmxe;

    invoke-direct {v2}, Lmxe;-><init>()V

    .line 709
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-ne v3, v4, :cond_5

    .line 710
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Lmxe;->a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 711
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_0

    .line 712
    invoke-virtual {v1, v0}, Lmxd;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_0

    .line 715
    :catch_2
    move-exception v0

    .line 716
    const-string v0, ""

    .line 717
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    :cond_6
    if-nez p2, :cond_2

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->v:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 1112
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->finishAffinity()V

    .line 1113
    invoke-virtual {p0, p0}, Lcom/santander/app/FazerPagamentoActivity;->a(Landroid/content/Context;)Z

    .line 1118
    :goto_0
    return-void

    .line 1115
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f0401c9

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->setContentView(I)V

    .line 141
    const v0, 0x7f1008aa

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->E:Lcom/santander/app/widget/Indicator;

    .line 142
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoActivity;->g()V

    .line 143
    invoke-virtual {p0, v2}, Lcom/santander/app/FazerPagamentoActivity;->onPageSelected(I)V

    .line 144
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 148
    const v1, 0x7f0904a1

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 150
    iput-object p0, p0, Lcom/santander/app/FazerPagamentoActivity;->J:Landroid/app/Activity;

    .line 152
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhau;->a(Z)V

    .line 154
    new-instance v0, Lfur;

    invoke-direct {v0}, Lfur;-><init>()V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->g:Lfur;

    .line 156
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 806
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const v5, 0x7f1008ab

    const/16 v4, 0x1001

    .line 811
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 813
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->E:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v1, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 814
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_3

    .line 815
    if-ne v0, v6, :cond_0

    .line 816
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 826
    :goto_0
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/FazerPagamentoActivity;->D:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    .line 827
    if-ne v0, v6, :cond_4

    .line 828
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 841
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->C:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpm;

    invoke-virtual {v0}, Lfpm;->a()I

    move-result v0

    .line 842
    packed-switch v0, :pswitch_data_0

    .line 877
    :goto_2
    return-void

    .line 817
    :cond_0
    if-eq v0, v7, :cond_1

    if-ne v0, v8, :cond_2

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 821
    :cond_2
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 824
    :cond_3
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 829
    :cond_4
    if-eq v0, v7, :cond_5

    if-ne v0, v8, :cond_6

    .line 831
    :cond_5
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 833
    :cond_6
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 836
    :cond_7
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 844
    :pswitch_0
    new-instance v0, Likg;

    invoke-direct {v0}, Likg;-><init>()V

    .line 845
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 846
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 847
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_2

    .line 850
    :pswitch_1
    new-instance v0, Likx;

    invoke-direct {v0}, Likx;-><init>()V

    .line 851
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 852
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 853
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_2

    .line 857
    :pswitch_2
    new-instance v0, Likl;

    invoke-direct {v0}, Likl;-><init>()V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->H:Likl;

    .line 858
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoActivity;->H:Likl;

    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 859
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 860
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_2

    .line 863
    :pswitch_3
    new-instance v0, Lijn;

    invoke-direct {v0}, Lijn;-><init>()V

    .line 864
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 865
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 866
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_2

    .line 869
    :pswitch_4
    new-instance v0, Lijf;

    invoke-direct {v0}, Lijf;-><init>()V

    .line 870
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 871
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 872
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_2

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
