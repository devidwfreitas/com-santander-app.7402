.class public Lcfn;
.super Lcfk;
.source "SourceFile"


# instance fields
.field private B:Z

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckw;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckw;",
            ">;"
        }
    .end annotation
.end field

.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private e:[Lcfv;

.field private f:[Lcfv;

.field private g:Z

.field private h:Lcfr;

.field private i:Lcfu;

.field private j:Lcfs;

.field private k:Z

.field private l:Lcfp;

.field private m:Lcfq;

.field private n:F

.field private o:F

.field private p:Landroid/graphics/DashPathEffect;

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x40a00000    # 5.0f

    const/16 v4, 0x10

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Lcfk;-><init>()V

    .line 88
    new-array v0, v2, [Lcfv;

    iput-object v0, p0, Lcfn;->e:[Lcfv;

    .line 100
    iput-boolean v2, p0, Lcfn;->g:Z

    .line 102
    sget-object v0, Lcfr;->LEFT:Lcfr;

    iput-object v0, p0, Lcfn;->h:Lcfr;

    .line 103
    sget-object v0, Lcfu;->BOTTOM:Lcfu;

    iput-object v0, p0, Lcfn;->i:Lcfu;

    .line 104
    sget-object v0, Lcfs;->HORIZONTAL:Lcfs;

    iput-object v0, p0, Lcfn;->j:Lcfs;

    .line 105
    iput-boolean v2, p0, Lcfn;->k:Z

    .line 110
    sget-object v0, Lcfp;->LEFT_TO_RIGHT:Lcfp;

    iput-object v0, p0, Lcfn;->l:Lcfp;

    .line 115
    sget-object v0, Lcfq;->SQUARE:Lcfq;

    iput-object v0, p0, Lcfn;->m:Lcfq;

    .line 120
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcfn;->n:F

    .line 125
    iput v3, p0, Lcfn;->o:F

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcfn;->p:Landroid/graphics/DashPathEffect;

    .line 135
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcfn;->q:F

    .line 140
    iput v1, p0, Lcfn;->r:F

    .line 147
    iput v5, p0, Lcfn;->s:F

    .line 152
    iput v3, p0, Lcfn;->t:F

    .line 157
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcfn;->u:F

    .line 767
    iput v1, p0, Lcfn;->a:F

    .line 772
    iput v1, p0, Lcfn;->b:F

    .line 774
    iput v1, p0, Lcfn;->c:F

    .line 776
    iput v1, p0, Lcfn;->d:F

    .line 781
    iput-boolean v2, p0, Lcfn;->B:Z

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcfn;->C:Ljava/util/List;

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcfn;->D:Ljava/util/List;

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcfn;->E:Ljava/util/List;

    .line 164
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcfn;->z:F

    .line 165
    invoke-static {v5}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcfn;->w:F

    .line 166
    invoke-static {v3}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcfn;->x:F

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    invoke-static {p1}, Lclg;->a(Ljava/util/List;)[I

    move-result-object v0

    invoke-static {p2}, Lclg;->b(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcfn;-><init>([I[Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lcfn;-><init>()V

    .line 188
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array or labels array is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array and labels array need to be of same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 200
    new-instance v2, Lcfv;

    invoke-direct {v2}, Lcfv;-><init>()V

    .line 201
    aget v3, p1, v0

    iput v3, v2, Lcfv;->f:I

    .line 202
    aget-object v3, p2, v0

    iput-object v3, v2, Lcfv;->a:Ljava/lang/String;

    .line 204
    iget v3, v2, Lcfv;->f:I

    const v4, 0x112234

    if-ne v3, v4, :cond_4

    .line 205
    sget-object v3, Lcfq;->NONE:Lcfq;

    iput-object v3, v2, Lcfv;->b:Lcfq;

    .line 210
    :cond_3
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_4
    iget v3, v2, Lcfv;->f:I

    const v4, 0x112233

    if-eq v3, v4, :cond_5

    iget v3, v2, Lcfv;->f:I

    if-nez v3, :cond_3

    .line 208
    :cond_5
    sget-object v3, Lcfq;->EMPTY:Lcfq;

    iput-object v3, v2, Lcfv;->b:Lcfq;

    goto :goto_1

    .line 213
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcfv;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfv;

    iput-object v0, p0, Lcfn;->e:[Lcfv;

    .line 214
    return-void
.end method

.method public constructor <init>([Lcfv;)V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcfn;-><init>()V

    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entries array is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iput-object p1, p0, Lcfn;->e:[Lcfv;

    .line 182
    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lckw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lcfn;->E:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/graphics/Paint;)F
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 243
    .line 245
    iget v0, p0, Lcfn;->s:F

    invoke-static {v0}, Lclg;->a(F)F

    move-result v4

    .line 247
    iget-object v5, p0, Lcfn;->e:[Lcfv;

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 248
    iget v0, v7, Lcfv;->c:F

    .line 249
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcfn;->n:F

    .line 248
    :goto_1
    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    .line 251
    cmpl-float v8, v0, v1

    if-lez v8, :cond_4

    .line 254
    :goto_2
    iget-object v1, v7, Lcfv;->a:Ljava/lang/String;

    .line 255
    if-nez v1, :cond_2

    move v1, v2

    .line 247
    :cond_0
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 249
    :cond_1
    iget v0, v7, Lcfv;->c:F

    goto :goto_1

    .line 257
    :cond_2
    invoke-static {p1, v1}, Lclg;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 259
    cmpl-float v7, v1, v2

    if-gtz v7, :cond_0

    move v1, v2

    goto :goto_3

    .line 263
    :cond_3
    add-float v0, v2, v1

    add-float/2addr v0, v4

    return v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 642
    iput p1, p0, Lcfn;->n:F

    .line 643
    return-void
.end method

.method public a(Landroid/graphics/DashPathEffect;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcfn;->p:Landroid/graphics/DashPathEffect;

    .line 679
    return-void
.end method

.method public a(Landroid/graphics/Paint;Lclh;)V
    .locals 23

    .prologue
    .line 857
    move-object/from16 v0, p0

    iget v2, v0, Lcfn;->n:F

    invoke-static {v2}, Lclg;->a(F)F

    move-result v4

    .line 858
    move-object/from16 v0, p0

    iget v2, v0, Lcfn;->t:F

    invoke-static {v2}, Lclg;->a(F)F

    move-result v11

    .line 859
    move-object/from16 v0, p0

    iget v2, v0, Lcfn;->s:F

    invoke-static {v2}, Lclg;->a(F)F

    move-result v12

    .line 860
    move-object/from16 v0, p0

    iget v2, v0, Lcfn;->q:F

    invoke-static {v2}, Lclg;->a(F)F

    move-result v9

    .line 861
    move-object/from16 v0, p0

    iget v2, v0, Lcfn;->r:F

    invoke-static {v2}, Lclg;->a(F)F

    move-result v10

    .line 862
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcfn;->B:Z

    .line 863
    move-object/from16 v0, p0

    iget-object v14, v0, Lcfn;->e:[Lcfv;

    .line 864
    array-length v15, v14

    .line 866
    invoke-virtual/range {p0 .. p1}, Lcfn;->a(Landroid/graphics/Paint;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcfn;->d:F

    .line 867
    invoke-virtual/range {p0 .. p1}, Lcfn;->b(Landroid/graphics/Paint;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcfn;->c:F

    .line 869
    sget-object v2, Lcfo;->b:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcfn;->j:Lcfs;

    invoke-virtual {v3}, Lcfs;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1026
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcfn;->b:F

    move-object/from16 v0, p0

    iget v3, v0, Lcfn;->x:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcfn;->b:F

    .line 1027
    move-object/from16 v0, p0

    iget v2, v0, Lcfn;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcfn;->w:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcfn;->a:F

    .line 1028
    return-void

    .line 872
    :pswitch_0
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 873
    invoke-static/range {p1 .. p1}, Lclg;->a(Landroid/graphics/Paint;)F

    move-result v13

    .line 874
    const/4 v6, 0x0

    .line 876
    const/4 v2, 0x0

    move v9, v2

    :goto_1
    if-ge v9, v15, :cond_7

    .line 878
    aget-object v16, v14, v9

    .line 879
    move-object/from16 v0, v16

    iget-object v2, v0, Lcfv;->b:Lcfq;

    sget-object v3, Lcfq;->NONE:Lcfq;

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    .line 880
    :goto_2
    move-object/from16 v0, v16

    iget v3, v0, Lcfv;->c:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 883
    :goto_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcfv;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 885
    if-nez v6, :cond_0

    .line 886
    const/4 v5, 0x0

    .line 888
    :cond_0
    if-eqz v2, :cond_2

    .line 889
    if-eqz v6, :cond_1

    .line 890
    add-float/2addr v5, v11

    .line 891
    :cond_1
    add-float/2addr v5, v3

    .line 895
    :cond_2
    if-eqz v16, :cond_6

    .line 898
    if-eqz v2, :cond_5

    if-nez v6, :cond_5

    .line 899
    add-float v2, v5, v12

    move v3, v2

    move v5, v7

    move v2, v6

    move v6, v8

    .line 907
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lclg;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 909
    add-int/lit8 v7, v15, -0x1

    if-ge v9, v7, :cond_1a

    .line 910
    add-float v7, v13, v10

    add-float/2addr v7, v5

    .line 918
    :goto_5
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 876
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v6, v2

    move v5, v3

    goto :goto_1

    .line 879
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 880
    :cond_4
    move-object/from16 v0, v16

    iget v3, v0, Lcfv;->c:F

    .line 882
    invoke-static {v3}, Lclg;->a(F)F

    move-result v3

    goto :goto_3

    .line 900
    :cond_5
    if-eqz v6, :cond_1b

    .line 901
    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 902
    add-float v2, v13, v10

    add-float v5, v7, v2

    .line 903
    const/4 v3, 0x0

    .line 904
    const/4 v2, 0x0

    goto :goto_4

    .line 912
    :cond_6
    const/4 v2, 0x1

    .line 913
    add-float/2addr v3, v5

    .line 914
    add-int/lit8 v5, v15, -0x1

    if-ge v9, v5, :cond_19

    .line 915
    add-float/2addr v3, v11

    move v6, v8

    goto :goto_5

    .line 921
    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Lcfn;->a:F

    .line 922
    move-object/from16 v0, p0

    iput v7, v0, Lcfn;->b:F

    goto/16 :goto_0

    .line 928
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lclg;->a(Landroid/graphics/Paint;)F

    move-result v16

    .line 929
    invoke-static/range {p1 .. p1}, Lclg;->b(Landroid/graphics/Paint;)F

    move-result v2

    add-float v17, v2, v10

    .line 930
    invoke-virtual/range {p2 .. p2}, Lclh;->j()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcfn;->u:F

    mul-float v18, v2, v3

    .line 933
    const/4 v7, 0x0

    .line 934
    const/4 v6, 0x0

    .line 935
    const/4 v2, 0x0

    .line 936
    const/4 v8, -0x1

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcfn;->D:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcfn;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcfn;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 942
    const/4 v5, 0x0

    move v10, v2

    :goto_6
    if-ge v5, v15, :cond_15

    .line 944
    aget-object v19, v14, v5

    .line 945
    move-object/from16 v0, v19

    iget-object v2, v0, Lcfv;->b:Lcfq;

    sget-object v3, Lcfq;->NONE:Lcfq;

    if-eq v2, v3, :cond_c

    const/4 v2, 0x1

    .line 946
    :goto_7
    move-object/from16 v0, v19

    iget v3, v0, Lcfv;->c:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    .line 949
    :goto_8
    move-object/from16 v0, v19

    iget-object v0, v0, Lcfv;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcfn;->D:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_e

    .line 956
    const/4 v10, 0x0

    .line 963
    :goto_9
    if-eqz v19, :cond_10

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcfn;->C:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lclg;->c(Landroid/graphics/Paint;Ljava/lang/String;)Lckw;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    if-eqz v2, :cond_f

    add-float v2, v12, v3

    :goto_a
    add-float v3, v10, v2

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcfn;->C:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lckw;

    iget v2, v2, Lckw;->a:F

    add-float/2addr v2, v3

    move v3, v8

    move v8, v2

    .line 979
    :goto_b
    if-nez v19, :cond_8

    add-int/lit8 v2, v15, -0x1

    if-ne v5, v2, :cond_17

    .line 981
    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    .line 983
    :goto_c
    if-eqz v13, :cond_9

    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-eqz v10, :cond_9

    sub-float v10, v18, v6

    add-float v20, v2, v8

    cmpl-float v10, v10, v20

    if-ltz v10, :cond_13

    .line 990
    :cond_9
    add-float/2addr v2, v8

    add-float/2addr v2, v6

    move v6, v7

    .line 1004
    :goto_d
    add-int/lit8 v7, v15, -0x1

    if-ne v5, v7, :cond_a

    .line 1006
    move-object/from16 v0, p0

    iget-object v7, v0, Lcfn;->E:Ljava/util/List;

    move/from16 v0, v16

    invoke-static {v2, v0}, Lckw;->a(FF)Lckw;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1011
    :cond_a
    :goto_e
    if-eqz v19, :cond_b

    const/4 v3, -0x1

    .line 942
    :cond_b
    add-int/lit8 v5, v5, 0x1

    move v10, v8

    move v7, v6

    move v6, v2

    move v8, v3

    goto/16 :goto_6

    .line 945
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 946
    :cond_d
    move-object/from16 v0, v19

    iget v3, v0, Lcfv;->c:F

    .line 948
    invoke-static {v3}, Lclg;->a(F)F

    move-result v3

    goto/16 :goto_8

    .line 959
    :cond_e
    add-float/2addr v10, v11

    goto :goto_9

    .line 966
    :cond_f
    const/4 v2, 0x0

    goto :goto_a

    .line 970
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcfn;->C:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lckw;->a(FF)Lckw;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    if-eqz v2, :cond_11

    :goto_f
    add-float v2, v10, v3

    .line 973
    const/4 v3, -0x1

    if-ne v8, v3, :cond_18

    move v3, v5

    move v8, v2

    .line 975
    goto :goto_b

    .line 971
    :cond_11
    const/4 v3, 0x0

    goto :goto_f

    :cond_12
    move v2, v9

    .line 981
    goto :goto_c

    .line 994
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcfn;->E:Ljava/util/List;

    move/from16 v0, v16

    invoke-static {v6, v0}, Lckw;->a(FF)Lckw;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 998
    move-object/from16 v0, p0

    iget-object v7, v0, Lcfn;->D:Ljava/util/List;

    const/4 v2, -0x1

    if-le v3, v2, :cond_14

    move v2, v3

    :goto_10
    const/4 v10, 0x1

    .line 1000
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 998
    invoke-interface {v7, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v8

    .line 1001
    goto :goto_d

    :cond_14
    move v2, v5

    .line 998
    goto :goto_10

    .line 1014
    :cond_15
    move-object/from16 v0, p0

    iput v7, v0, Lcfn;->a:F

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcfn;->E:Ljava/util/List;

    .line 1016
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcfn;->E:Ljava/util/List;

    .line 1018
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    .line 1020
    :goto_11
    int-to-float v2, v2

    mul-float v2, v2, v17

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcfn;->b:F

    goto/16 :goto_0

    .line 1018
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcfn;->E:Ljava/util/List;

    .line 1020
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_17
    move v2, v6

    move v6, v7

    goto/16 :goto_e

    :cond_18
    move v3, v8

    move v8, v2

    goto/16 :goto_b

    :cond_19
    move v6, v8

    goto/16 :goto_5

    :cond_1a
    move v7, v5

    goto/16 :goto_5

    :cond_1b
    move v2, v6

    move v3, v5

    move v5, v7

    move v6, v8

    goto/16 :goto_4

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcfp;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcfn;->l:Lcfp;

    .line 616
    return-void
.end method

.method public a(Lcfq;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcfn;->m:Lcfq;

    .line 634
    return-void
.end method

.method public a(Lcfr;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcfn;->h:Lcfr;

    .line 544
    return-void
.end method

.method public a(Lcfs;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcfn;->j:Lcfs;

    .line 580
    return-void
.end method

.method public a(Lcft;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    sget-object v0, Lcfo;->a:[I

    invoke-virtual {p1}, Lcft;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 524
    :goto_0
    sget-object v0, Lcft;->LEFT_OF_CHART_INSIDE:Lcft;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcft;->RIGHT_OF_CHART_INSIDE:Lcft;

    if-ne p1, v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcfn;->k:Z

    .line 526
    return-void

    .line 476
    :pswitch_0
    sget-object v0, Lcfr;->LEFT:Lcfr;

    iput-object v0, p0, Lcfn;->h:Lcfr;

    .line 477
    sget-object v0, Lcft;->LEFT_OF_CHART_CENTER:Lcft;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcfu;->CENTER:Lcfu;

    :goto_2
    iput-object v0, p0, Lcfn;->i:Lcfu;

    .line 480
    sget-object v0, Lcfs;->VERTICAL:Lcfs;

    iput-object v0, p0, Lcfn;->j:Lcfs;

    goto :goto_0

    .line 477
    :cond_1
    sget-object v0, Lcfu;->TOP:Lcfu;

    goto :goto_2

    .line 486
    :pswitch_1
    sget-object v0, Lcfr;->RIGHT:Lcfr;

    iput-object v0, p0, Lcfn;->h:Lcfr;

    .line 487
    sget-object v0, Lcft;->RIGHT_OF_CHART_CENTER:Lcft;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcfu;->CENTER:Lcfu;

    :goto_3
    iput-object v0, p0, Lcfn;->i:Lcfu;

    .line 490
    sget-object v0, Lcfs;->VERTICAL:Lcfs;

    iput-object v0, p0, Lcfn;->j:Lcfs;

    goto :goto_0

    .line 487
    :cond_2
    sget-object v0, Lcfu;->TOP:Lcfu;

    goto :goto_3

    .line 496
    :pswitch_2
    sget-object v0, Lcft;->ABOVE_CHART_LEFT:Lcft;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcfr;->LEFT:Lcfr;

    :goto_4
    iput-object v0, p0, Lcfn;->h:Lcfr;

    .line 501
    sget-object v0, Lcfu;->TOP:Lcfu;

    iput-object v0, p0, Lcfn;->i:Lcfu;

    .line 502
    sget-object v0, Lcfs;->HORIZONTAL:Lcfs;

    iput-object v0, p0, Lcfn;->j:Lcfs;

    goto :goto_0

    .line 496
    :cond_3
    sget-object v0, Lcft;->ABOVE_CHART_RIGHT:Lcft;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcfr;->RIGHT:Lcfr;

    goto :goto_4

    :cond_4
    sget-object v0, Lcfr;->CENTER:Lcfr;

    goto :goto_4

    .line 508
    :pswitch_3
    sget-object v0, Lcft;->BELOW_CHART_LEFT:Lcft;

    if-ne p1, v0, :cond_5

    sget-object v0, Lcfr;->LEFT:Lcfr;

    :goto_5
    iput-object v0, p0, Lcfn;->h:Lcfr;

    .line 513
    sget-object v0, Lcfu;->BOTTOM:Lcfu;

    iput-object v0, p0, Lcfn;->i:Lcfu;

    .line 514
    sget-object v0, Lcfs;->HORIZONTAL:Lcfs;

    iput-object v0, p0, Lcfn;->j:Lcfs;

    goto :goto_0

    .line 508
    :cond_5
    sget-object v0, Lcft;->BELOW_CHART_RIGHT:Lcft;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcfr;->RIGHT:Lcfr;

    goto :goto_5

    :cond_6
    sget-object v0, Lcfr;->CENTER:Lcfr;

    goto :goto_5

    .line 518
    :pswitch_4
    sget-object v0, Lcfr;->CENTER:Lcfr;

    iput-object v0, p0, Lcfn;->h:Lcfr;

    .line 519
    sget-object v0, Lcfu;->CENTER:Lcfu;

    iput-object v0, p0, Lcfn;->i:Lcfu;

    .line 520
    sget-object v0, Lcfs;->VERTICAL:Lcfs;

    iput-object v0, p0, Lcfn;->j:Lcfs;

    goto :goto_0

    .line 524
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcfu;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcfn;->i:Lcfu;

    .line 562
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcfv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcfv;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfv;

    iput-object v0, p0, Lcfn;->e:[Lcfv;

    .line 228
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    invoke-static {p1}, Lclg;->a(Ljava/util/List;)[I

    move-result-object v0

    invoke-static {p2}, Lclg;->b(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcfn;->a([I[Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 597
    iput-boolean p1, p0, Lcfn;->k:Z

    .line 598
    return-void
.end method

.method public a([I[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 364
    new-instance v2, Lcfv;

    invoke-direct {v2}, Lcfv;-><init>()V

    .line 365
    aget v3, p1, v0

    iput v3, v2, Lcfv;->f:I

    .line 366
    aget-object v3, p2, v0

    iput-object v3, v2, Lcfv;->a:Ljava/lang/String;

    .line 368
    iget v3, v2, Lcfv;->f:I

    const v4, 0x112234

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcfv;->f:I

    if-nez v3, :cond_2

    .line 370
    :cond_0
    sget-object v3, Lcfq;->NONE:Lcfq;

    iput-object v3, v2, Lcfv;->b:Lcfq;

    .line 374
    :cond_1
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_2
    iget v3, v2, Lcfv;->f:I

    const v4, 0x112233

    if-ne v3, v4, :cond_1

    .line 372
    sget-object v3, Lcfq;->EMPTY:Lcfq;

    iput-object v3, v2, Lcfv;->b:Lcfq;

    goto :goto_1

    .line 377
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcfv;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfv;

    iput-object v0, p0, Lcfn;->f:[Lcfv;

    .line 378
    return-void
.end method

.method public a([Lcfv;)V
    .locals 1

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    const/4 v0, 0x0

    new-array p1, v0, [Lcfv;

    .line 345
    :cond_0
    iput-object p1, p0, Lcfn;->f:[Lcfv;

    .line 346
    return-void
.end method

.method public a()[Lcfv;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcfn;->e:[Lcfv;

    return-object v0
.end method

.method public b(Landroid/graphics/Paint;)F
    .locals 6

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 276
    iget-object v3, p0, Lcfn;->e:[Lcfv;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 277
    iget-object v1, v1, Lcfv;->a:Ljava/lang/String;

    .line 278
    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {p1, v1}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 282
    cmpl-float v5, v1, v0

    if-lez v5, :cond_0

    move v0, v1

    .line 283
    goto :goto_1

    .line 286
    :cond_2
    return v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 660
    iput p1, p0, Lcfn;->o:F

    .line 661
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcfv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcfv;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfv;

    iput-object v0, p0, Lcfn;->f:[Lcfv;

    .line 340
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 793
    iput-boolean p1, p0, Lcfn;->B:Z

    .line 794
    return-void
.end method

.method public b([Lcfv;)V
    .locals 1

    .prologue
    .line 390
    iput-object p1, p0, Lcfn;->e:[Lcfv;

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcfn;->g:Z

    .line 392
    return-void
.end method

.method public b()[I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcfn;->e:[Lcfv;

    array-length v0, v0

    new-array v2, v0, [I

    .line 293
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcfn;->e:[Lcfv;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 294
    iget-object v1, p0, Lcfn;->e:[Lcfv;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcfv;->b:Lcfq;

    sget-object v3, Lcfq;->NONE:Lcfq;

    if-ne v1, v3, :cond_0

    const v1, 0x112234

    :goto_1
    aput v1, v2, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iget-object v1, p0, Lcfn;->e:[Lcfv;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcfv;->b:Lcfq;

    sget-object v3, Lcfq;->EMPTY:Lcfq;

    if-ne v1, v3, :cond_1

    const v1, 0x112233

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcfn;->e:[Lcfv;

    aget-object v1, v1, v0

    iget v1, v1, Lcfv;->f:I

    goto :goto_1

    .line 298
    :cond_2
    return-object v2
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 705
    iput p1, p0, Lcfn;->q:F

    .line 706
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcfv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcfv;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfv;

    iput-object v0, p0, Lcfn;->e:[Lcfv;

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcfn;->g:Z

    .line 406
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcfn;->e:[Lcfv;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcfn;->e:[Lcfv;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 306
    iget-object v2, p0, Lcfn;->e:[Lcfv;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcfv;->a:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-object v1
.end method

.method public d(F)V
    .locals 0

    .prologue
    .line 724
    iput p1, p0, Lcfn;->r:F

    .line 725
    return-void
.end method

.method public d()[I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcfn;->f:[Lcfv;

    array-length v0, v0

    new-array v2, v0, [I

    .line 315
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcfn;->f:[Lcfv;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 316
    iget-object v1, p0, Lcfn;->f:[Lcfv;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcfv;->b:Lcfq;

    sget-object v3, Lcfq;->NONE:Lcfq;

    if-ne v1, v3, :cond_0

    const v1, 0x112234

    :goto_1
    aput v1, v2, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v1, p0, Lcfn;->f:[Lcfv;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcfv;->b:Lcfq;

    sget-object v3, Lcfq;->EMPTY:Lcfq;

    if-ne v1, v3, :cond_1

    const v1, 0x112233

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcfn;->f:[Lcfv;

    aget-object v1, v1, v0

    iget v1, v1, Lcfv;->f:I

    goto :goto_1

    .line 320
    :cond_2
    return-object v2
.end method

.method public e(F)V
    .locals 0

    .prologue
    .line 743
    iput p1, p0, Lcfn;->s:F

    .line 744
    return-void
.end method

.method public e()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcfn;->f:[Lcfv;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 327
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcfn;->f:[Lcfv;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 328
    iget-object v2, p0, Lcfn;->f:[Lcfv;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcfv;->a:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-object v1
.end method

.method public f(F)V
    .locals 0

    .prologue
    .line 761
    iput p1, p0, Lcfn;->t:F

    .line 762
    return-void
.end method

.method public f()[Lcfv;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcfn;->f:[Lcfv;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcfn;->g:Z

    .line 415
    return-void
.end method

.method public g(F)V
    .locals 0

    .prologue
    .line 829
    iput p1, p0, Lcfn;->u:F

    .line 830
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcfn;->g:Z

    return v0
.end method

.method public i()Lcft;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcfn;->j:Lcfs;

    sget-object v1, Lcfs;->VERTICAL:Lcfs;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcfn;->h:Lcfr;

    sget-object v1, Lcfr;->CENTER:Lcfr;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcfn;->i:Lcfu;

    sget-object v1, Lcfu;->CENTER:Lcfu;

    if-ne v0, v1, :cond_0

    .line 435
    sget-object v0, Lcft;->PIECHART_CENTER:Lcft;

    .line 457
    :goto_0
    return-object v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcfn;->j:Lcfs;

    sget-object v1, Lcfs;->HORIZONTAL:Lcfs;

    if-ne v0, v1, :cond_6

    .line 437
    iget-object v0, p0, Lcfn;->i:Lcfu;

    sget-object v1, Lcfu;->TOP:Lcfu;

    if-ne v0, v1, :cond_3

    .line 438
    iget-object v0, p0, Lcfn;->h:Lcfr;

    sget-object v1, Lcfr;->LEFT:Lcfr;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcft;->ABOVE_CHART_LEFT:Lcft;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcfn;->h:Lcfr;

    sget-object v1, Lcfr;->RIGHT:Lcfr;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcft;->ABOVE_CHART_RIGHT:Lcft;

    goto :goto_0

    :cond_2
    sget-object v0, Lcft;->ABOVE_CHART_CENTER:Lcft;

    goto :goto_0

    .line 444
    :cond_3
    iget-object v0, p0, Lcfn;->h:Lcfr;

    sget-object v1, Lcfr;->LEFT:Lcfr;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcft;->BELOW_CHART_LEFT:Lcft;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcfn;->h:Lcfr;

    sget-object v1, Lcfr;->RIGHT:Lcfr;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcft;->BELOW_CHART_RIGHT:Lcft;

    goto :goto_0

    :cond_5
    sget-object v0, Lcft;->BELOW_CHART_CENTER:Lcft;

    goto :goto_0

    .line 450
    :cond_6
    iget-object v0, p0, Lcfn;->h:Lcfr;

    sget-object v1, Lcfr;->LEFT:Lcfr;

    if-ne v0, v1, :cond_9

    .line 451
    iget-object v0, p0, Lcfn;->i:Lcfu;

    sget-object v1, Lcfu;->TOP:Lcfu;

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcfn;->k:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcft;->LEFT_OF_CHART_INSIDE:Lcft;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcfn;->i:Lcfu;

    sget-object v1, Lcfu;->CENTER:Lcfu;

    if-ne v0, v1, :cond_8

    sget-object v0, Lcft;->LEFT_OF_CHART_CENTER:Lcft;

    goto :goto_0

    :cond_8
    sget-object v0, Lcft;->LEFT_OF_CHART:Lcft;

    goto :goto_0

    .line 457
    :cond_9
    iget-object v0, p0, Lcfn;->i:Lcfu;

    sget-object v1, Lcfu;->TOP:Lcfu;

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcfn;->k:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcft;->RIGHT_OF_CHART_INSIDE:Lcft;

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcfn;->i:Lcfu;

    sget-object v1, Lcfu;->CENTER:Lcfu;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcft;->RIGHT_OF_CHART_CENTER:Lcft;

    goto :goto_0

    :cond_b
    sget-object v0, Lcft;->RIGHT_OF_CHART:Lcft;

    goto :goto_0
.end method

.method public j()Lcfr;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcfn;->h:Lcfr;

    return-object v0
.end method

.method public k()Lcfu;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcfn;->i:Lcfu;

    return-object v0
.end method

.method public l()Lcfs;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcfn;->j:Lcfs;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcfn;->k:Z

    return v0
.end method

.method public n()Lcfp;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcfn;->l:Lcfp;

    return-object v0
.end method

.method public o()Lcfq;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcfn;->m:Lcfq;

    return-object v0
.end method

.method public p()F
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcfn;->n:F

    return v0
.end method

.method public q()F
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcfn;->o:F

    return v0
.end method

.method public r()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcfn;->p:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public s()F
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcfn;->q:F

    return v0
.end method

.method public t()F
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcfn;->r:F

    return v0
.end method

.method public u()F
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcfn;->s:F

    return v0
.end method

.method public v()F
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcfn;->t:F

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcfn;->B:Z

    return v0
.end method

.method public x()F
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcfn;->u:F

    return v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lckw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    iget-object v0, p0, Lcfn;->C:Ljava/util/List;

    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    iget-object v0, p0, Lcfn;->D:Ljava/util/List;

    return-object v0
.end method
